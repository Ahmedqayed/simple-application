##overview
===========
i create new repository with name simple-application then create new branch with name dev
in our repository 4 file related to out python application (app.py, requiremnet.txt, Dockerfile and .env)
our simple application that is an 'as easy as possible' HTTP API, It should have a /live endpoint.
our application with the below responses:
- Well done: if the application was able to connect with a database
- Maintenance: if some error occurred during the connection with the database
The application will read the PORT and DATABASE URL from .env file
===================================================================================================================
i create main.tf terraform file to create azure componant and database
and for initialize terraform we should run <terraform init> then to apply terraform we should run <terraform apply>
====================================================================================================================
then i create pipline (auzre-piplines.yml) to automates the process of building, testing, and preparing the application for deployment, ensuring consistency and repeatability
