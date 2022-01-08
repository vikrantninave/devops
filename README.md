# devops
devops - assignments and learnings - practice sessions

My approach to solve the assignment : (Vikrant Ninave - MS2023)

Pre-setup :
I have installed Docker on my machine. I have changed a few permissions under system preferences.
I have given access to docker and terminal to avoid permission issues. Solved one problem with docker write permission with docker engine config file :  "buildkit": false

Logic :
I break the assignment into 2 parts

First part  is manual approach
1) perform all sql commands and write sql script 
2) understood docker commands and manually perform operations
	Docker images 
	Docker ps
	Docker build
	Docker file creation
	Docker rm
	Docker exec 
	Docker stop
	
First I manually tried the commands. Creation of mysql image, running mysql container, going inside container and verifying mysql server.
Manually tried creation of table inside container 
Running sql script inside container

Devops approach :
Once I cleared all the commands and manual flow I wrote a docker file with the help of online searches. 
Understood git commands and pushed code to git repo. 
https://github.com/vikrantninave/devops

Explanation of Dockerfile. Explain each lines in detail.

Docker file contains below command

FROM --platform=linux/x86_64 mysql:latest
ENV MYSQL_ROOT_PASSWORD admin123
ENV MYSQL_DATABASE pucsdStudents
ENV MYSQL_USER pucsd
ENV MYSQL_PASSWORD pucsd
COPY ./test.sql /docker-entrypoint-initdb.d/


FROM --platform=linux/x86_64 mysql:latest : here mysql is my image in specifying the latest version of my sql image when docker script will run it will pull the image with the latest version of my sql. Here i need to specify platform as linux/x86_64 for M1 chipset i was getting error
 ENV MYSQL_ROOT_PASSWORD admin123
ENV MYSQL_DATABASE pucsdStudents
ENV MYSQL_USER pucsd
ENV MYSQL_PASSWORD pucsd

	I set the env variables inside container whenever i will check this variable i will get these values

3.COPY ./test.sql /docker-entrypoint-initdb.d/

At the same location where my docker file exists I also have a sql script. Here the copy command has two params 1 my sql file location which we will copy inside the container and docker-entrypoint-initdb.d/ is executed the moment my database container starts running.

