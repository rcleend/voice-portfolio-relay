# Use an official Node runtime as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json package-lock.json ./

# Install the application dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port for the relay server
EXPOSE 8081

# Set environment variable for the relay server port
ENV PORT=8081

# Start the relay server
CMD ["npm", "start"]