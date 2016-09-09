FROM risingstack/alpine:3.4-v6.3.0-3.6.2

COPY package.json package.json
RUN npm install

COPY . .
CMD ["npm","start"]
