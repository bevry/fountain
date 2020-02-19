FROM node:12
ENV PORT 3000
EXPOSE 3000
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN npx next build
CMD ["npx", "next", "start"]