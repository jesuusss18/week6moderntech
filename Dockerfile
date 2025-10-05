# Use Node.js 16
FROM node:16

# Set working directory
WORKDIR /app

# Copy dependency files and install
COPY package*.json ./
RUN npm install

# Copy app files
COPY . .

# Expose port 3000
EXPOSE 3000

# Start app
CMD ["npm", "start"]
