# Use Node.js official image
FROM node:18

# Set working directory inside container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Expose port (match what your app listens on)
EXPOSE 5000

# Command to start the app
CMD ["npm", "start"]
