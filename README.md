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

├── Dockerfile # Dockerfile with JMeter install and setup
└── README.md # Documentation

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
