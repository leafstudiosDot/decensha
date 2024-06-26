<div id="header" align="center">
    <img src="./assets/decensha-logo.png" height="150px" >
</div>
<br />

# The Decentralised Chatroom
Decensha is an open source chatroom server. This repository is a server for Decensha Client, it is provided for community hosts that are running a Decensha server.
## Prerequisites
This repository includes deployment configurations for Docker and docker-compose. It is recommended to use Docker while running Decensha server.
### Requirements (Non-Docker) ‼️NOT RECOMMENDED WITHOUT DOCKER‼️
- PostgreSQL (+15.3)
- Rust (+1.69)
- nginx

## Setup Server (Docker Image)
1. Build Docker Image - `docker build -t decensha .`
2. Run Docker Image as a Container - `docker run -v $(pwd)/assets:/usr/src/decensha/assets -v $(pwd)/.env.local:/usr/src/decensha/.env.local decensha`
    - Run Docker Image as a Container for server contributors - `docker run -v $(pwd)/assets:/usr/src/decensha/assets -v $(pwd)/.env.local:/usr/src/decensha/.env.local -v $(pwd)/src:/usr/src/decensha/src decensha`

## Setup Server (Docker Compose)
1. Run `docker-compose up -d` to initialize for Docker

## Build
1. `cargo build` or `cargo run`
2. `cargo build --release` for Production

## License
© 2023-2024 leafstudiosDot and other contributors for this project.

This program is free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License along with this program. If not, see https://www.gnu.org/licenses/.
