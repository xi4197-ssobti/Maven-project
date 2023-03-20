FROM maven:3.8-openjdk-17-slim
RUN mkdir /my_app
COPY pom.xml /my_app/pom.xml
COPY src /my_app/src
WORKDIR my_app
RUN mvn package
CMD ["java","-jar","target/maven-demo-0.1-SNAPSHOT.jar"]
