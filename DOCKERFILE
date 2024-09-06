# Use the official OpenJDK 21 image as the base image
FROM openjdk:21-jdk-slim

# Set the working directory
WORKDIR /app

# Copy your Minecraft server jar file into the container
COPY minecraft_server.1.21.1.jar .

# Expose the default Minecraft port
EXPOSE 25565

# Accept the Minecraft EULA by default
RUN echo "eula=true" > eula.txt

# Set the command to run your Minecraft server
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "minecraft_server.1.21.1.jar", "nogui"]
