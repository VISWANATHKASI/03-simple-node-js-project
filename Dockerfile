FROM node:19-alpine as stage1
MAINTAINER name viswanath
EXPOSE 80
WORKDIR /flm
COPY package*.json ./
RUN npm install
COPY . .

FROM stage1 as final
RUN npm install --production
COPY . .
CMD ["node", "index.js"]




#FROM node:16
#WORKDIR /app
#COPY package*.json ./
#RUN npm install
#COPY . .
#EXPOSE 3000
#CMD ["node", "index.js"]
