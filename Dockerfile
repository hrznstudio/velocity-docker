FROM adoptopenjdk/openjdk8-openj9:alpine-slim

ARG VELOCITY_JAR_URL
ENV VELOCITY_JAR_URL=$VELOCITY_JAR_URL

ARG VELOCITY_TOML_URL
ENV VELOCITY_TOML_URL=$VELOCITY_TOML_URL

COPY ./build.sh /build.sh
RUN sh /build.sh

COPY ./run.sh /run.sh

ENV JAVA_MEMORY=512M
ENV JAVA_ARGS=

CMD ["sh", "/run.sh"]
