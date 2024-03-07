# Use a base image with Node.js installed
FROM node:14.21.3-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project directory into the container
COPY . .

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the application
CMD ["npm", "run" ,"serve"]