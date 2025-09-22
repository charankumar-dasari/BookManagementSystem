# Stage 1: build the WAR using Maven
FROM maven:3.8.6-openjdk-17 AS build
WORKDIR /app

# copy pom first (speeds up Docker cache) and then sources
COPY pom.xml .
COPY src ./src

# build the WAR (skip tests to speed up)
RUN mvn -B -DskipTests package

# Stage 2: run Tomcat and deploy the built WAR
FROM tomcat:9.0-jdk17

# remove default apps (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# copy the WAR produced by maven to Tomcat as ROOT.war
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh","run"]
