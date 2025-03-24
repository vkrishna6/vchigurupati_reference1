# vchigurupati_reference

1. Create a Docker file with a base image
2. Download and unzip the contents of jmeter application into the application directory using root account.
3. Update permissions on application directory to UserID running the container.
4. Update/switch the user account to a different account to run the container and application.
5. Add WORKDIR instruction to keep the current working directory to the application directory. 
6. Add ENTRYPOINT to keep the container in running status.
7. Pushed the final image to the docker public repository - command to pus the image "docker push vchigurupati/vchigurupati_vkrishna6ubi9_jmeter_v5_6:latest".
