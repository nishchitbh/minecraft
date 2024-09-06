# Use the official OpenJDK 21 image as the base image
FROM openjdk:21-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Minecraft server jar file and other necessary files into the container
COPY minecraft_server.1.21.1.jar /app/
COPY eula.txt /app/
COPY server.properties /app/
COPY libraries/ /app/libraries/
COPY logs/ /app/logs/
COPY versions/ /app/versions/

# Expose the default Minecraft port
EXPOSE 25565

# Run the Minecraft server
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "minecraft_server.1.21.1.jar", "nogui"]
