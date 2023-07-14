# specify a base image
FROM centos:7

# Description

LABEL Description = "containerize Apache web app"
LABEL Description = "edwige you must get a job very soon in IT"
# run yum update -y
RUN yum -y update

#  install apache
RUN yum -y install httpd

#copy index file from our local to inside the container
COPY index.html /var/www/html/ 

# open port 80
EXPOSE 80


# run allow us to run the command when the container start
# run httpd service when the container start
ENTRYPOINT [ "usr/sbin/httpd" ]

# can override CMD in backgroung
CMD [ "-D", "FOREGROUND" ]
