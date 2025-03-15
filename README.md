# P2P Chat Application with libp2p

A simple peer-to-peer chat application built using Rust and libp2p. This application allows users to discover peers on the local network via mDNS and exchange messages through the GossipSub protocol.

## Features

- Automatic peer discovery using mDNS
- Message broadcasting via GossipSub protocol
- Support for both TCP and QUIC transport protocols
- Terminal-based interface for sending and receiving messages

## Prerequisites

- Rust and Cargo installed
- Network connection with mDNS capability

## Dependencies

- libp2p: Core P2P networking framework
- tokio: Asynchronous runtime
- futures: Asynchronous programming utilities
- tracing-subscriber: Logging and diagnostics

## Usage

1. Clone the repository and navigate to the project directory:
   ```
   git clone https://github.com/Cyberking99/libp2p-chat.git
    cd libp2p-chat
   ```
2. Build the application:
   ```
   cargo build
   ```
3. Run the application:
   ```
   cargo run
   ```
4. The application will start listening on available network interfaces
5. Type messages in the terminal and press *Enter* to broadcast them to all connected peers
6. Messages from other peers will be displayed in your terminal automatically

## How It Works

1. The application creates a libp2p swarm with GossipSub and mDNS behaviors
2. It automatically discovers other peers running the same application on the local network
3. When a peer is discovered, it's added to the GossipSub mesh
4. Messages typed into STDIN are published to all connected peers via GossipSub
5. Incoming messages from other peers are displayed in the terminal

## Network Configuration

- The application listens on TCP and QUIC protocols
- Default topic channel is "test-net"
- Messages are identified by their content hash
