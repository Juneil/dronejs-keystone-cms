FROM node:6-onbuild

RUN mkdir /workdir
COPY . /workdir

RUN npm install
RUN chmod +x run.sh

EXPOSE 8080
ENV PORT 8080

ENTRYPOINT ["./run.sh"]
