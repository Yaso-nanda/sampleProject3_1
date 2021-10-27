FROM openjdk:8
ADD target/*.jar ./
EXPOSE 8080
ENTRYPOINT ["java","-jar","*.jar"]
