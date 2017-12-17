FROM tomcat
ENV JAVA_OPTS="-server -Xms256m -Xmx512m -Dmidpoint.home=/var/opt/midpoint/ -Djavax.net.ssl.trustStore=/var/opt/midpoint/keystore.jceks -Djavax.net.ssl.trustStoreType=jceks"

MAINTAINER info@evolveum.com
ENV version 3.7

RUN apt-get update \
&& apt-get -y install wget git maven libmaven-compiler-plugin-java default-jdk

RUN git clone https://github.com/Evolveum/midpoint.git

WORKDIR midpoint

RUN  mvn clean install -DskipTests=true -P -dist

RUN cp gui/admin-gui/target/midpoint.war /usr/local/tomcat/webapps

WORKDIR /

RUN rm -rf ~/.m2 midpoint

CMD ["catalina.sh", "run"]
