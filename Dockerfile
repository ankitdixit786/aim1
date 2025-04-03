# Use the official OpenJDK 21 image from Docker Hub
FROM openjdk:17
# Set working directory inside the container
WORKDIR /app
# Copy the compiled Java application JAR file into the container
COPY ./target/aim.jar /app
# Expose the port the Spring Boot application will run on
EXPOSE 8080
# Set environment variables for database connection
ENV DB_HOST=localhost
ENV DB_PORT=3306
ENV DB_NAME=world
ENV DB_USER=root
ENV DB_PASSWORD=root
# Command to run the application
CMD ["java", "-jar", "course-service.jar"]