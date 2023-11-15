import socket
import threading  # Import the threading module for concurrent connections

def remove_quotes_backslashes(input_string):
    cleaned_string = input_string.replace("'", "").replace("\\", "").replace("(", "")
    return cleaned_string

def save_uploaded_content(content, filename):
    with open(filename, 'w') as file:
        file.write(content)

def handle_client(connection, address):
    client_ip, client_port = address
    print(f"Connection from: {address}")

    content = connection.recv(4096).decode('utf-8')

    cleaned_client_ip = remove_quotes_backslashes(client_ip)
    filename = f'{cleaned_client_ip}_loot.txt'
    save_uploaded_content(content, filename)

    print(f"File '{filename}' uploaded successfully.")

    connection.close()

def main():
    host = '0.0.0.0'
    port = 12345

    server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server_socket.bind((host, port))
    server_socket.listen(5)  # Allow up to 5 queued connections

    print(f"Listening on {host}:{port}")

    while True:
        connection, address = server_socket.accept()
        client_thread = threading.Thread(target=handle_client, args=(connection, address))
        client_thread.start()

if __name__ == '__main__':
    main()
