# Stage 1
FROM node:10-alpine as build-step
RUN mkdir -p .
WORKDIR C:\Users\PujaJive\Desktop\TradebullDocker\DockerTradebullFront\tradebull\package.json
COPY package.json .
RUN npm install
COPY . .
RUN npm run build --prod



# Stage 2
FROM nginx:1.17.1-alpine
COPY /dist/hello-world /usr/share/nginx/html
