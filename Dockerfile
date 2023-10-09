FROM maven:3.8.6-eclipse-temurin-19-focal

RUN apt update
RUN apt install -y npm
RUN npm i -g n
RUN n latest

ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
CMD ["mvn"]
