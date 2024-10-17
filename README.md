# Voice Portfolio Relay

This project implements a WebSocket relay server that connects browser clients to OpenAI's Realtime API. It allows for real-time communication between web applications and OpenAI's services.

## Features

- WebSocket server to handle client connections
- Relay messages between clients and OpenAI's Realtime API
- Environment variable configuration for API keys and port settings
- Docker support for easy deployment

## Prerequisites

- Node.js 18 or higher
- npm (Node Package Manager)
- OpenAI API key

## Installation

1. Clone the repository:

   ```
   git clone https://github.com/rcleend/voice-portfolio-relay.git
   cd voice-portfolio-relay
   ```

2. Install dependencies:

   ```
   npm install
   ```

3. Create a `.env` file in the root directory and add your OpenAI API key:
   ```
   OPENAI_API_KEY=your_api_key_here
   ```

## Usage

To start the relay server:

```
npm start
```

This will start the server on the default port 8081, or on the port specified in your `.env` file.

## Docker Support

This project includes Docker support for easy deployment. Here are the Docker-related commands:

1. Build the Docker image:

   ```
   npm run docker:build
   ```

2. Run the Docker container:

   ```
   npm run docker:run
   ```

3. Stop the Docker container:
   ```
   npm run docker:stop
   ```

Make sure you have Docker installed on your system before using these commands.

## Environment Variables

The following environment variables can be set in your `.env` file:

- `OPENAI_API_KEY`: Your OpenAI API key (required)
- `PORT`: The port number for the relay server (default: 8081)

## Project Structure

- `index.js`: The main entry point of the application
- `lib/relay.js`: Contains the `RealtimeRelay` class that handles WebSocket connections and relays messages
- `Dockerfile`: Defines the Docker image for the project
- `package.json`: Lists project dependencies and scripts

## Dependencies

This project uses the following main dependencies:

- `@openai/realtime-api-beta`: OpenAI's Realtime API client
- `dotenv`: For loading environment variables
- `ws`: WebSocket library for Node.js

## Development

For development, this project uses:

- `nodemon`: For automatically restarting the server on file changes
- ESLint and Prettier for code formatting and linting

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
