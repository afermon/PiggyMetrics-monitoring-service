FROM java:8-jre-alpine

ENV APP_COMMIT_REF=${COMMIT_REF} \
    APP_BUILD_DATE=${BUILD_DATE}

ADD ./target/monitoring.jar /app/
CMD ["java", "-Xmx200m", "-jar", "/app/monitoring.jar"]

EXPOSE 8080