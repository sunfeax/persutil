FROM maven:3.9-eclipse-temurin-21 AS build

WORKDIR /build

COPY pom.xml ./
COPY src ./src

RUN mvn -B -DskipTests package && \
    JAR_FILE="$(find target -maxdepth 1 -type f -name '*.jar' ! -name '*original*' | head -n 1)" && \
    test -n "$JAR_FILE" && \
    cp "$JAR_FILE" app.jar

FROM eclipse-temurin:21-jre

WORKDIR /app

COPY --from=build /build/app.jar app.jar

EXPOSE 8089

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
