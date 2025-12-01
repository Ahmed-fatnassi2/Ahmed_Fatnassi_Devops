FROM openjdk:17

WORKDIR /app

# Copier le JAR généré par Maven
COPY target/*.jar app.jar

# Exposer le port de l'application
EXPOSE 8080

# Commande pour lancer l'application
ENTRYPOINT ["java", "-jar", "app.jar"]
