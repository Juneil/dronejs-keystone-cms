FROM node/6-onbuild

COPY package.json package.json
RUN npm install

EXPOSE 8080
ENV PORT 8080

ADD run.sh run.sh
RUN chmod +x run.sh

COPY . .
ENTRYPOINT ["./run.sh"]
