FROM node:12.14-alpine as build
WORKDIR /app
COPY package*.json /app/
RUN npm install -g @angular/cli
RUN npm install -g ionic
RUN npm install n latest
COPY ./ /app/
EXPOSE 8100
CMD ["ionic", "serve", "--external"]