# Use node as a base image
FROM node:alpine

# Define working directory
WORKDIR '/docker-nodejs-redis'

COPY ./package.json ./

# Install project dependencies
RUN npm install

COPY ./ ./

# Define a binding port
#EXPOSE 8080

# Run the app
CMD ["npm","start"]
