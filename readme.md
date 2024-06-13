## Overview
This repository contains creating a simple HTTP API, deploying it to Azure, and setting up CI/CD with Azure DevOps.

## Application
The application is a simple Flask API with a /live endpoint that checks the database connection.

## Infrastructure as Code (IaC)
Terraform is used to provision Azure resources, including a PostgreSQL database.

## Deployment
The application is containerized using Docker and deployed to Azure.

## CI/CD
Azure DevOps is used for continuous integration and continuous deployment.

## Scalability and Security
The solution includes configurations for scalability using Azure VMSS and security using network security groups.

## Logging and Monitoring
Basic logging is implemented, and Azure Monitor is used for monitoring.
