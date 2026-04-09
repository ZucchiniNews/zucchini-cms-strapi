FROM node:20-alpine


WORKDIR /opt/app


COPY package*.json ./


RUN npm install


COPY . .


EXPOSE 1337


CMD ["sh", "-c", "npm run build && npm run start"]