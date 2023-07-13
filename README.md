# Aria2ng Dockerized
![LICENSE](https://img.shields.io/github/license/ph4r5h4d/aria2ng-caddy-docker?style=for-the-badge) [![Docker Pull](https://img.shields.io/docker/pulls/ph4r5h4d/aria2ng-caddy?style=for-the-badge)](https://hub.docker.com/r/ph4r5h4d/aria2ng-caddy) 

This is a Dockerized version of Aria2ng, a web-based front-end for the popular download manager Aria2. The Aria2ng container is configured to run behind a Caddy reverse proxy and is accessible on port 8080.
## Features

- Web-based interface for managing and monitoring Aria2 downloads.
- Simple and easy-to-use interface.
- Support for downloading files using HTTP/HTTPS, BitTorrent, and Metalink protocols.
- Multi-threaded downloads for faster speeds.
- Support for pausing, resuming, and prioritizing downloads.
- Queue management and automatic file organization.
- Real-time download progress and status updates.
- Customizable settings and options.

## Prerequisites

Before running the Aria2ng Docker image, you must have the following prerequisites installed on your system:

- Docker: [Installation Guide](https://docs.docker.com/get-docker/)

## Getting Started

To get started with Aria2ng Dockerized, follow these steps:

1. Pull the Docker image:

   ```bash
   docker pull ph4r5h4d/aria2ng-caddy
   ```

2. Run the Docker container:

   ```bash
   docker run -d -p 8080:8080 ph4r5h4d/aria2ng-caddy
   ```

   This command will start the Aria2ng Docker container in the background and map port 8080 of the host to port 8080 of the container.

3. Access Aria2ng in your browser:

   Open your preferred web browser and visit `http://localhost:8080` to access the Aria2ng web interface.

4. Configure the connection to Aria2 RPC interface:

   Before you can start using Aria2ng to manage downloads, you need to configure the connection to the Aria2 RPC interface. One way to do this is by running a Dockerized Aria2 RPC container. You can use the `ph4r5h4d/aria2-docker` Docker image for this purpose. Please refer to the [Aria2 Docker Hub page](https://hub.docker.com/r/ph4r5h4d/aria2-docker) for instructions on how to run the Aria2 RPC container.

5. Connect Aria2ng to Aria2 RPC:

   Once the Aria2 RPC container is running, you need to configure the Aria2ng container to connect to it. In the Aria2ng web interface, go to the "Settings" section and enter the Aria2 RPC URL and token provided by the Aria2 RPC container. Save the settings.

6. Start adding downloads:

   Once the connection to the Aria2 RPC interface is established, you can start adding downloads by clicking on the "+" button in the Aria2ng interface. You can add URLs or upload torrent/Metalink files to initiate downloads.

7. Manage and monitor downloads:

   Aria2ng provides a user-friendly interface to manage and monitor your downloads. You can pause, resume, prioritize, and remove downloads, as well as view the download progress and status in real-time.

8. Stop the container:

   To stop the Aria2ng Docker container, run the following command:

   ```bash
   docker stop container-id
   ```

   Replace `container-id` with the actual ID or name of the running container.

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request on the GitHub repository.

## License

This project is licensed under the [MIT License](LICENSE).