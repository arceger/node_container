FROM registry.access.redhat.com/ubi8/nodejs-16

WORKDIR /home/node/app

USER root

COPY package*.json ./

RUN npm install



COPY . .

RUN chown -R 1001:1001 /home

USER 1001

EXPOSE 8080

CMD [ "node", "app.js" ]



# FROM registry.access.redhat.com/ubi8/nodejs-16:latest AS build
# WORKDIR /usr/src/app
# COPY package*.json ./
# USER root
# RUN npm install
# COPY . /usr/src/app/
# RUN npm run build

# RUN chown -R 1001:1001 /usr/src/app
# RUN npm install -g serve
# USER 1001
# EXPOSE 3000
# #CMD [ "npm", "start" ]
# CMD ["serve", "-s", "build"]

