# Use official Node.js base image
FROM node:18-alpine  

# Create writable directory first
# RUN mkdir -p /app
WORKDIR /app

# Now continue
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "node", "server.js" ]
