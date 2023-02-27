FROM node:18-alpine3.15
WORKDIR /app
COPY *.json /app/ 
ARG NODE_ENV 
# RUN npm install
 RUN  if [ "$NODE_ENV" = "development" ]; \
           then  npm install; \
           else  npm install --only-production; \
         fi
  
COPY . ./
EXPOSE 3000
CMD [ "npm","start" ]