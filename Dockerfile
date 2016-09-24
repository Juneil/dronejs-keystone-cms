FROM node:6-onbuild

COPY . .
ADD run.sh run.sh
RUN chmod +x run.sh

RUN npm install

EXPOSE 8080
ENV PORT 8080

CMD ["start"]
ENTRYPOINT ["./run.sh"]
