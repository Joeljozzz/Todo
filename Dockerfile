# Use the official Node.js image as the base image
FROM node:14  # You can change this to a specific version if needed

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install the dependencies
RUN npm install --production

# Copy the rest of your application code
COPY . .

# Expose the port that your app runs on
EXPOSE 3000

# Set environment variables
ENV NODE_ENV=production
ENV POSTGRES_HOST=db
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=YourFirstNameYourStudentNumber
ENV POSTGRES_DB=labonedb

# Command to run the application
CMD ["npm", "start"]
