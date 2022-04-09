# Build C++ Application using Jenkins

This is a sample project of Calclator App written in C++ to demonstrate how we can build a C++ application using Jenkins.


## Running the Code
Since the version of C++ libraries differ from OS version to Version, I have created a docker container with the required library versions, tomcat7 and Java Runtime Environment (JRE 8)


## Steps:

* Build the docker container using the below command.
`sudo docker build -t tomcatdemo:1 .`

* Run the container
Here we will mount the jenkins folder into the container so that the jobs we create are persisted on the local filesystem.

`sudo docker run -p8080:8080 -v $PWD/jenkins:/jenkins tomcatdemo:1 `

## Execution

* Open the browser and go to 
http://localhost:8080

* On the first run, you will see the "Getting Ready" screen.
![initial screen](demo/1.initial-screen.png)

* On the first run, Jenkins creates a password which is logged in the secrets folder.
![unlock](demo/2.unlock.png)

* Since we have mounted the jenkins folder inside the container, the secrets folder can be accessed from your filesystem. Go to jenkins/secrets folder and take the password from initalAdminPassword file.

* Next you will be asked to install any plugins of your choice

![plugins](demo/3.plugin.png)

* Next you will be aske to setup admin user

![setup-admin](demo/4.admin.png)

* Finally the Jenkins is ready to use.
![ready](demo/5.ready.png)

* The below is Homepage
![homepage](demo/6.homepage.png)

* Create your Job to compile the C++ Application

![create-job](demo/7.createJob.png)

* Add make all as build step.

* Run the Job.
![build](demo/8.build.png)

* You can see the demo video of Job in action
![video](demo/Building C++ App Using Jenkins.mp4)

