# vchigurupati_reference

1. Create a Docker file with a base image
2. Download and unzip the contents of jmeter application into the application directory using root account.
3. Update permissions on application directory to UserID running the container.
4. Update/switch the user account to a different account to run the container and application.
5. Add WORKDIR instruction to keep the current working directory to the application directory. 
6. Add ENTRYPOINT to keep the container in running status.
7. Pushed the final image to the docker public repository - command to pus the image "docker push vchigurupati/vchigurupati_vkrishna6ubi9_jmeter_v5_6:latest".

## Commands used to create image, run container, execute/start a session in running container, tag an image, push image to docker repository. 

1. docker build -t imagename:version
2. docker run --name containername imagename:version
3. docker exec -it containerID sh
4. docker image tag LocalImgaeName:version dockerusername/repositoryname:tag
5. docker push dockerusername/repositoryname:tag

additional commands - docker ps; docker images, docker start/stop containername, docker rm containername, docker rmi imagename
