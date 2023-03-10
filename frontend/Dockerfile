FROM node:18-alpine3.15
WORKDIR /app
COPY *.json /app/ 
RUN npm install -g @angular/cli@latest
RUN npm install --force

COPY . ./
EXPOSE 4200
