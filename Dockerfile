FROM node:20-alpine AS base

# Create and change directory to app folder
WORKDIR /app

# Copy Yarn files
COPY package.json yarn.lock ./

# Install application dependencies with Yarn
RUN yarn install --frozen-lockfile

# Copy the webapp to app folder
COPY . .

# Expose port 3000
EXPOSE 3000

# Set the command to run when the container starts
CMD ["yarn", "start"]