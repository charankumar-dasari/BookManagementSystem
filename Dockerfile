# Stage 1: Build
FROM maven:3.8.7-openjdk-11 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Stage 2: Deploy to Tomcat
FROM tomcat:9.0
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/BookManagementSystem.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
