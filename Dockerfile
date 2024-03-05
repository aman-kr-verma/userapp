
# Use the official OpenJDK image as base image
FROM openjdk:latest
# Set the working directory in the container
WORKDIR /app

# Copy the packaged jar file into the container at /app
COPY target/userapp.jar /app/userapp.jar

# Expose the port the application runs on
EXPOSE 9090

# Specify the command to run your application
CMD ["java", "-jar", "userapp.jar"]
