FROM node:alpine3.22 as stage1
MAINTAINER name viswanath
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

FROM stage1 as final
RUN npm install --production
COPY . .
EXPOSE 3000
CMD ["node","node.js"]




#FROM node:16
#WORKDIR /app
#COPY package*.json ./
#RUN npm install
#COPY . .
#EXPOSE 3000
#CMD ["node", "index.js"]
