# Usa una imagen base con Java 17
FROM openjdk:17-jdk-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos del proyecto al contenedor
COPY . .

# Da permisos de ejecución al wrapper de Maven (por si no los tiene)
RUN chmod +x mvnw

# Compila el proyecto sin ejecutar los tests
RUN ./mvnw clean package -DskipTests

# Expone el puerto en el que tu app se ejecuta (Spring Boot usa 8080)
EXPOSE 8080

# Comando que ejecuta la app al iniciar el contenedor
CMD ["java", "-jar", "target/*.jar"]
