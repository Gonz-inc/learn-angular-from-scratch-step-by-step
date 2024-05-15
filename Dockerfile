# using Node v10
FROM node:10

# Create app directory 
WORKDIR /usr/src/learn-angular-from-scratch

# Install app Dependencies. 
# A wildcard is used to ensure that both package json files are copied.

COPY package*.json ./

# Node version current 

RUN npm install -g @angular/cli@7.3.8
RUN npm install 

# If you are building your code for production
# RUN npm ci --only=productiona.

# Bundle app source
COPY . .

# Expose port 3000 outside container
EXPOSE 3000
# Command used to start application
CMD ng serve --host 0.0.0.0


