FROM debian
ENV JAVA_OPTS="-server -Xms256m -Xmx512m -Dmidpoint.home=/var/opt/midpoint/ -Djavax.net.ssl.trustStore=/var/opt/midpoint/keystore.jceks -Djavax.net.ssl.trustStoreType=jceks"

MAINTAINER info@evolveum.com
ENV version 3.7

RUN apt-get update \
&& apt-get -y install wget git maven libmaven-compiler-plugin-java default-jdk

RUN git clone https://github.com/Evolveum/midpoint.git

WORKDIR midpoint

RUN mvn compile

#RUN wget http://evolveum.com/downloads/midpoint/${version}/midpoint-${version}-dist.zip

#RUN echo 'Extracting midPoint archive...' \
#&& tar xjf midpoint-${version}-dist.tar.bz2 \
#&& rm -f midpoint-${version}-dist.tar.bz2

#RUN cp midpoint-${version}/war/midpoint.war /usr/local/tomcat/webapps \
#&& rm -rf midpoint-${version}

#CMD ["catalina.sh", "run"]
