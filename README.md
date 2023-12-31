# Deployment of Java based  Web Application on Kubernetes Cluster 

## Description

This project is a Java-based web application that demonstrates the Deployment of a web application Deployed on Kubernetes Cluster(Self managed on AWS Cloud).
In This Project we have used Jenkins Tool to automate the process of Building and Deployment. Also Ansible Tool for Configuration Management Purpose.



![Real_Project](https://github.com/ShubhamBhurse/project-2/assets/130531451/1372823b-9b27-40db-adb9-178ff1e9c152)



## Project Video


https://github.com/ShubhamBhurse/project-2/assets/130531451/a9cafcfc-c7d8-484c-909a-9ed396d1d2d7


## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Installation](#installation)
3. [Usage](#usage)
4. [AWS Services](#aws-services)
5. [Jenkins Automation](#jenkins-automation)
6. [Jenkinsfile](#Jenkinsfile)
7. [Contact Information](#contact-information)

## Prerequisites

- Jenkins & Ansible Server
- SonarQube Server
- Kubernetes Cluster

## Installation

1. Jenkins, Ansible and Maven
Installations done on the same Server

[Click here](https://github.com/ShubhamBhurse/Installations/blob/main/jenkins_ansible_installation_p1.md)

2. SonarQube


Sonarqube is installed on EC2 (Ubuntu) Instance.

[Click here](https://github.com/ShubhamBhurse/Installations/blob/main/sonarqube_installation_p1.md)

3. Kubernetes Cluster

To deploy an Application we have used Kubernetes Cluster(Self managed) On AWS Cloud.

[Click here](https://github.com/ShubhamBhurse/Installations/blob/main/kubernetes_installation_p1.md)



## Usage

- Access the application at `http://52.66.198.215:30000/webapp/`.

## AWS Services

- This project utilizes AWS EC2 Service for Installating Softwares like Jenkins, Sonarqube, Ansible and Kubernetes Cluster for Deploying the application.

## Jenkins Automation

This project includes automated building and deployment using Jenkins CI/CD pipelines. Here's how it works:

1. **Continuous Integration (CI):** Jenkins automatically builds the project whenever changes are pushed to the repository.

2. **Continuous Deployment (CD):** Jenkins deploys the latest build to the Kubernetes Cluster whenever changes are merged into the main branch.

## Jenkinsfile
[Click Here](https://github.com/ShubhamBhurse/project-2/blob/main/Jenkinsfile)

Stages Involves in pipeline

1. Clean Workspace:
   
This stage involve cleaning up any remnants from previous builds or deployments in the Jenkins workspace. It ensures that you're starting with a clean slate before proceeding with the pipeline.

2. Code Checkout:
   
In this stage, the pipeline typically checks out the source code from your version control system (GitHub) so that you have the latest codebase to work with.

3. Modified Image Tag:
   
This stage involve dynamically generating or modifying the image tag used for Docker images. based on the job name and also it uses Jenkins ENVIRONMENT variable, This will be done by  Cofiguration Managment Tool(Ansible).

4. Build:

The build stage compiles our code and creates any necessary artifacts(Packages). As our project is Java based web application it compiles the code and create WAR files.

5. Sonar Scanner:

This stage runs the SonarQube scanner as a part of the pipeline to analyze the quality of your code and to identify any issues or code quality violations.

6. Copy WAR & Dockerfile:

In this stage, we are copying  the WAR file and Dockerfile from Build Context into a Kubernetes Cluster where the Docker image will be built. The Dockerfile contains instructions for building the Docker image with our Application Code(WAR file).
This stage is executed with Ansible.

7. Push Image on DockerHub:

This stage involves pushing the Docker image which contains our application to a container registry(Docker Hub). This makes the image accessible for deployment on other environments or to the other team members.

8. Deployment on Kubernetes Cluster:

This stage is responsible for deploying our application on an Self managed Kubernetes Cluster. It includes configuring the deployment, scaling, and managing the application within the Kubernetes environment.

## Contact Information

For questions or support, please contact

Name : Shubham Bhurse

Email : shubhbhurse900@gmail.com

