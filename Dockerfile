FROM risingstack/alpine:3.4-v6.3.0-3.6.2

COPY package.json package.json
RUN npm install

EXPOSE 8080
ENV PORT 8080

ADD run.sh run.sh
RUN chmod +x run.sh

COPY . .
CMD ["start"]
ENTRYPOINT ["./run.sh"]
