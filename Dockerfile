# Base Image
FROM node:alpine

# Create a work directory
WORKDIR "/app"

# Copy <file> from <source>
COPY package.json .
# Run <command>
RUN npm install
# Copy <currentsource> to <workdirectorysource>
COPY . .

# CMD ["<command>", "<command>"]
# Start server
CMD ["npm", "start"]