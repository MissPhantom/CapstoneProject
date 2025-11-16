FROM node:16

WORKDIR /app

COPY package.json .

RUN npm install --legacy-peer-deps

COPY . .

RUN npm run build

# Serve the built app using a simple Node server
RUN npm install -g serve

CMD ["serve", "-s", "build", "-l", "3000"]
