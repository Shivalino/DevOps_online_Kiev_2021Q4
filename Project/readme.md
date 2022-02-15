# Final CI/CD pipeline project: "Sample web-application"

## My Objectives on educational project were:

> Learning how to use various DevOps tools in daily practice
> And to help my future Team do their job good and in time

## My task were:

1. Automate build, delivery and deploy artifact webapp.war (java web arcive) on Tomcat server  
2. Make daily backups  
3. Every morning my team must have access to new DEV TEST and STAGE environments.  
4. After release the artifact must be deployed onto PROD environment.  

## I decided to use tools:

- AWS EC2 free tier t2.micro instances for my lab and all environments  
- Linux Ubuntu 20.04 LTS AWS AMI images as my basic OS  
- AWS Elastic IP service to set Static Public IPs on all my instatces  
- Jenkins with JenkinsNode and installed Maven - to build artifact and deploying to Prod environment  
- Docker and DockerHub and Ansible - for delivery artifact to Dev, Test, and Stage environments  
- Github - for storing "Sample web-application" sources  
- AWS Elastic Lifecycle Manager for Schedule backups of EC2 instance EBS-volumes  

