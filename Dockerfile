FROM maven:3.8.6-eclipse-temurin-19-focal

RUN apt install -y npm

ENV MAVEN_HOME /usr/share/maven

ARG MAVEN_VERSION=3.8.6
ARG USER_HOME_DIR="/root"
ENV MAVEN_CONFIG "$USER_HOME_DIR/.m2"

ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
CMD ["mvn"]
