FROM node:6-onbuild

RUN npm install
ADD run.sh run.sh
RUN chmod +x run.sh

EXPOSE 8080
ENV PORT 8080

CMD ["start"]
ENTRYPOINT ["./run.sh"]
