#2-stage build
#building a har file
FROM maven:3.6.3-jdk-8 AS build
WORKDIR /AWS/DevOpsDemoProject
COPY . /AWS/DevOpsDemoProject
RUN mvn -f /AWS/DevOpsDemoProject/pom.xml clean package

#create an image
FROM openjdk:8-jdk-alpine
EXPOSE 5000
COPY --from=build /AWS/DevOpsDemoProject/target/DevOpsDemoProject DevOpsDemoProject.jar
ENTRYPOINT ["java -jar /DevOpsDemoProject.jar"]