FROM node:21.2.0-alpine

# Set environment variables
ENV NODE_ENV=production

# Install nano for text editing
RUN apk add --no-cache nano

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json package-lock.json* ./
RUN npm install --omit=dev

# Bundle app source
COPY . .

CMD [ "npm", "start" ]
