FROM maven:3.9-eclipse-temurin-21 AS build
WORKDIR /build
COPY pom.xml ./
COPY src ./src
RUN mvn -B package

FROM eclipse-temurin:21-jre-jammy
WORKDIR /app
RUN groupadd --gid 10001 app \
    && useradd --uid 10001 --gid app --no-create-home --shell /usr/sbin/nologin app \
    && mkdir -p /app/data \
    && chown app:app /app/data
COPY --from=build /build/target/concurrent-reservation-service-0.0.1-SNAPSHOT.jar /app/application.jar
USER app
ENV PORT=8080
ENV JAVA_TOOL_OPTIONS="-XX:MaxRAMPercentage=60.0"
EXPOSE 8080
CMD ["sh", "-c", "exec java -jar /app/application.jar --server.address=0.0.0.0 --server.port=${PORT:-8080}"]
