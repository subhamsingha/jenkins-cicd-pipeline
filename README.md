jenkins-cicd-pipeline

Project:  CI/CD pipeline setup to deploy a standalone JAVA application. 

Environment:  AWS, Jenkins, GitHub, Docker, Maven

BUILD --> TEST --> PUSH --> DEPLOY

Here, Jenkins has been used to build, test and Deploy docker image to deploy a standalone java project.

Steps:
•	Pull the source code for a Java EE based Project
•	Compile (build) the code using Maven to generate the JAR file
•	Create a Docker image using the jar.
•	Run Test cases & ensure they pass
•	Push the Docker image to the Docker Hub
•	Create a remote machine to deploy containerized application
•	Deploy the Docker container on a target node

Prerequisites:
•	Jenkins should be installed with git, maven and shell plugins.
•	Docker and Docker Compose should be installed on both Jenkins and remote machine


