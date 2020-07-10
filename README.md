# custom_jenkins

This dockerfile creates a custom jenkins image with role based authentication strategy plugin pre-installed and some pre-configured roles. A default 'admin' user is created to disable anonymous user access to the instance.

Following roles are pre-configured in the image:
- admin
- Developer
- Deployer
- Prod-deployer

Admin role has complete access to the Jenkins environment.
Developer role has restricted access which is read only access to overall system and complete access to agents, job and view configurations.
Deployer and Prod-deployer are have very restricted access which is read only access to overall system and build and cancel access to the jobs.
