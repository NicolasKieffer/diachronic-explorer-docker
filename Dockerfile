# Get nodejs image
FROM node:argon

# Create app directory
COPY . /usr/src/app/

WORKDIR /usr/src/app/istex-demonstrateur

# Install app dependencies
RUN npm install

CMD nodejs serveur.js

EXPOSE 3000

RUN mkdir -p /opt/ezmaster/data
RUN ln -s /usr/src/app/istex-demonstrateur/db /opt/ezmaster/data