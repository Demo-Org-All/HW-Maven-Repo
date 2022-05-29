FROM centos
MAINTAINER Vasu Niranjan vniranjan72@outlook.com
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
RUN curl -O https://downloads.apache.org/tomcat/tomcat-9/v9.0.62/bin/apache-tomcat-9.0.62.tar.gz
RUN tar -xvf apache*.tar.gz
RUN mv apache-tomcat-9.0.62/* /opt/tomcat/.
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum update -y
RUN yum install java -y
RUN java -version
WORKDIR /opt/tomcat/webapps
COPY ["/home/ubuntu/jenkinsagent/workspace/First Maven Project/target/HelloWorld-Maven.war"], "."]
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
