# For this project, remember to name this image as "cicd-webapp:1.0"
FROM    node:21-alpine

ENV     MONGO_DB_USERNAME=admin \
        MONGO_DB_PWD=password

RUN     mkdir -p /home/webapp

COPY    ./webapp /home/webapp

WORKDIR /home/webapp

RUN     npm install

CMD ["node", "/home/webapp/server.js"]