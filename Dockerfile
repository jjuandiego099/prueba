# Usa una imagen base con Java 17 (eclipse-temurin es estable y compatible)
FROM eclipse-temurin:17-jdk-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR generado por Maven al contenedor
COPY target/crudjueves-1.jar app.jar

# Expone el puerto en el que tu aplicación escucha
EXPOSE 8080

# Comando que ejecuta la aplicación Spring Boot
ENTRYPOINT ["java", "-jar", "app.jar"]
