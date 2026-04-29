FROM eclipse-temurin:11-jdk AS build

WORKDIR /app

COPY . .

RUN chmod +x mvnw
RUN ./mvnw clean package -DskipTests

FROM eclipse-temurin:11-jre

WORKDIR /app

COPY --from=build /app/target/spotmusic-reserva-facil.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
