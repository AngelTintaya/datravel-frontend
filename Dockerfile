# Use Node.js LTS (Long Term Support) image
FROM node:latest

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if exists) to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application code to the container
COPY . .

# Expose port (Modify as needed)
EXPOSE 3000

# Define a default command to start the app (Modify as needed)
CMD ["npm", "start"]
