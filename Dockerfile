# Java 17 image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Build application
RUN ./mvnw clean package -DskipTests || mvn clean package -DskipTests

# Run application
CMD ["java", "-jar", "target/*.jar"]
