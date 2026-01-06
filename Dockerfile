<<<<<<< HEAD
FROM n8nio/n8n:latest

ENV N8N_PORT=8080
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=http

EXPOSE 8080
=======
# Gunakan Node.js versi 20
FROM node:20-slim

WORKDIR /app

COPY package*.json ./
RUN npm install --production

COPY . .

EXPOSE 8080

CMD ["node", "index.js"]
>>>>>>> 9b42a00 (Initial commit with Node.js app and Dockerfile)
