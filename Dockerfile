# Usa una imagen base ligera con Java 17
FROM eclipse-temurin:24
COPY "./target/crudjueves-1.jar" "app.jar"
EXPOSE 8888
ENTRYPOINT ["java", "-jar", "app.jar"]
