# Use official Node.js image as a base
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install any needed packages specified in package.json
RUN npm install

# Make the container’s port 3000 available to the outside
EXPOSE 3000

# Define the command to run your app
CMD ["npm", "start"]