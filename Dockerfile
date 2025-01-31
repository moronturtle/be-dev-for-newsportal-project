FROM node:20

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and yarn.lock
COPY package*.json yarn.lock ./

# Install dependencies using yarn
RUN yarn install

# Copy the rest of the application code
COPY . .

# Build the NestJS application
RUN yarn build

# Expose the port the app runs on
EXPOSE 3025

# Command to run the application for the prod
# CMD ["yarn", "start:prod"]

# Command to run the application for the dev
CMD ["yarn", "start:dev"]