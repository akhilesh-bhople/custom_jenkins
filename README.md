# custom_jenkins
https://travis-ci.org/akhilesh-bhople/custom_jenkins.svg?branch=master
This dockerfile creates a custom jenkins image with role based authentication strategy plugin pre-installed and some pre-configured roles. A default 'admin' user is created to disable anonymous user access to the instance.

Following roles are pre-configured in the image:
- admin
- Developer
- Deployer
- Prod-deployer

Admin role has complete access to the Jenkins environment.
Developer role has restricted access which is read only access to overall system and complete access to agents, job and view configurations.
Deployer and Prod-deployer have very restricted access which is read only access to overall system and build and cancel access to the jobs.

The build, test and publish pipeline is created using Travis-CI. The pipeline uses docker service from travis to build the image, dgoss is used to run local test on the build image and on successful completion of above steps the image is published to docker hub. Each image is tagged with the travis build number so that the images can be identified later.

Dgoss tests the contents of the docker image by creating a container instance, in this case it tests the following scenarios:
- Check if role strategy plugin is installed
- Check if the config.xml is present
- Match the contents of config.xml to verify that role based authentication strategy is selected and entry for pre-configured roles is always present in the file.
- Tests if Jenkins is listening on port 8080

An instance of the latest image built using this pipeline is running on an AWS EC2 instance.

- Custom Jenkins Instance : http://13.232.78.100:8080
- Travis-CI : https://travis-ci.org/github/akhilesh-bhople/custom_jenkins
- Docker Hub : https://hub.docker.com/repository/docker/akhileshbhople/custom_jenkins
