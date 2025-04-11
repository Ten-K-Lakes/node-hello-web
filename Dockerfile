# Use the official Node.js 18.13.0 image as the base image
FROM --platform=linux/amd64 node:18.13.0

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose a port for the application to listen on
EXPOSE 8080

# Start the application
CMD [ "node", "app.js" ]
