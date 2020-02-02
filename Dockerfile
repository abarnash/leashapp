# FROM node:13

# Create app directory
# WORKDIR /usr/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
# COPY package*.json ./
# COPY src ./src
# COPY public ./public

# RUN npm install
# RUN npm run-script build

FROM nginx:1.17
COPY build/ /usr/share/nginx/html
