# Use official Node.js base image
FROM node:18-slim

# Use root user (default in official image)
USER root

# Create app directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application code
COPY . .

# Expose the port
EXPOSE 3000

# Run the application
CMD [ "node", "server.js" ]
