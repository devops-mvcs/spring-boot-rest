FROM centos:latest
WORKDIR /opt
COPY . .
RUN yum install -y epel-release java-1.8.0-openjdk-devel maven
RUN mvn package -DskipTest
CMD ["java", "-jar", "-Dspring.profiles.active=test", "/opt/spring-boot-rest/target/spring-boot-rest-example.jar"]

