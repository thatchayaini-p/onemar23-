# Node image use pannrom
FROM node:18

# working directory set pannrom
WORKDIR /app

# package files copy pannrom
COPY package*.json ./

# dependencies install
RUN npm install

# full project copy pannrom
COPY . .

# app run port
EXPOSE 3000

# start command
CMD ["npm", "start"]
