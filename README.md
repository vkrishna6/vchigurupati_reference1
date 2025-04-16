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



# 📦 vchigurupati_reference: JMeter Docker Image

This repository provides a custom Docker image built on **Red Hat UBI 9** with **Apache JMeter 5.6** pre-installed. It's designed for learning and reference purposes, showcasing key Dockerfile instructions and image lifecycle commands.

---

## 🐳 Dockerfile Highlights

- ✅ **Base Image**: `redhat/ubi9`
- 📦 **Installed Tools**: Java, tar, and Apache JMeter 5.6
- 🔐 **User Handling**:
  - Downloads and installs JMeter as `root`
  - Changes ownership of the application directory to a non-root user (UID `1001`)
  - Switches to non-root user to run the container
- 🛠️ **Work Directory**: `/opt/jmeter56`
- 🔁 **Entrypoint**: Keeps the container running with `tail -f /dev/null`

---

## 🗂️ Project Structure

. ├── Dockerfile # Dockerfile with JMeter install and setup └── README.md # Documentation

---

## 🏗️ Build & Run Instructions

### 🔨 Build the Docker Image

```bash
docker build -t vchigurupati_vkrishna6ubi9_jmeter_v5_6:latest .

🚀 Run the Container
docker run --name jmeter_container vchigurupati_vkrishna6ubi9_jmeter_v5_6:latest

🛠️ Access the Container Shell
docker exec -it jmeter_container sh

📤 Push to Docker Hub
Tag the Image:

bash
Copy
Edit
docker tag vchigurupati_vkrishna6ubi9_jmeter_v5_6:latest vchigurupati/vchigurupati_vkrishna6ubi9_jmeter_v5_6:latest
Push the Image:

bash
Copy
Edit
docker push vchigurupati/vchigurupati_vkrishna6ubi9_jmeter_v5_6:latest
📋 Useful Docker Commands

Command	Description
docker ps	List running containers
docker images	List local images
docker start <containername>	Start a stopped container
docker stop <containername>	Stop a running container
docker rm <containername>	Remove a container
docker rmi <imagename>	Remove a local image
📚 Resources
Apache JMeter 5.6

Docker Docs

Red Hat UBI Images

👨‍💻 Author
Vamsikrishna Chigurupati
