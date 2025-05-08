# Use an official Node.js runtime as the base image
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json first to leverage Docker cache
COPY package*.json ./

# Install the app dependencies
RUN npm install --production

# Copy the rest of your application code
COPY . .

# Expose the port the app will run on
EXPOSE 3000

# Command to run your app
CMD ["npm", "start"]
