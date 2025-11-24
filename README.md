# **DevOps FAT2 – Docker + Linux + Git Project**

This project demonstrates how to use a Dockerfile to run basic Linux commands, build an image, push it to DockerHub, and manage everything using Git and GitHub.

---

## **1. DevOps Concepts (Detailed but clean)**

### **1. Version Control (Git)**

Version control keeps track of every change in the project.
It allows:

* committing updates as logical checkpoints
* reverting mistakes
* pushing the project to GitHub
* maintaining a clean history of work

In this project, Git ensured the Dockerfile and README were safely versioned and stored.

---

### **2. Containerization (Docker)**

Containerization lets you package the environment and commands into a single portable unit.
Benefits applied here:

* the same Dockerfile works on any OS
* all Linux commands run inside an isolated environment
* no dependency conflicts
* fast build → run cycle

This directly reflects how DevOps teams ship consistent environments.

---

### **3. Infrastructure as Code (IaC)**

IaC means “infrastructure defined through code instead of manual setup.”
The Dockerfile is the infrastructure:

* directories created with code
* files created with code
* commands executed automatically
* reproducible every time

No manual setup. One command builds everything.

---

### **4. Automation**

Every step.. create folder, create files, list files, copy/remove files, is automated inside the Docker build.
Automation reduces human errors and makes the environment predictable.

---

### **5. Artifact Management (DockerHub)**

Once the image was created, it was pushed to DockerHub.
This acts as:

* centralized storage
* publicly accessible artifact
* deployable anywhere

This mirrors real DevOps pipelines where build artifacts go to registries.

---

## **2. Steps I Followed**

### **Step - 1 Created the Project Folder**

Created a folder locally to store the Dockerfile.

### **Step - 2 Wrote the Dockerfile**

Added Linux commands:

* create directory
* create files
* list files
* write text
* copy + remove files
* show date
* run `whoami` as final command

---

### **Step - 3 Built the Docker Image**

```bash
docker build -t fat2-image .
```

During build, Docker executed all the RUN commands and showed their output.

---

### **Step - 4 Ran the Container**

```bash
docker run fat2-image
```

Runtime output:

```
root
```

Everything else already happened during the build stage.

---

### **Step - 5 Logged in to DockerHub**

```bash
docker login
```

### **Step - 6 Tagged and Pushed the Image**

```bash
docker tag fat2-image <dockerhub-username>/fat2-image:latest
docker push <dockerhub-username>/fat2-image:latest
```

### **Step - 7 Pushed Project to GitHub**

```bash
git add .
git commit -m "Dockerfile with basic Linux commands"
git push
```

---

## **3. What I Learned (More detailed and explained)**

### **Linux**

* How file creation, deletion, listing, and text writing works.
* The difference between commands executing in a shell vs. Docker build layers.

---

### **Docker**

* How a Dockerfile is structured (FROM → RUN → CMD).
* How build commands execute in layers.
* The difference between build-time commands and runtime commands.
* How to tag and push images to DockerHub.
* Why containers always provide a clean environment.

---

### **Git**

* Initializing a repo
* Staging and committing files
* Pushing to GitHub
* Maintaining clean project version history

This is identical to workflows used in real CI/CD pipelines.

---

### **DevOps Mindset**

This FAT-2 teaches core principles:

* automate everything
* keep environments reproducible
* use version control for all work
* package artifacts and publish them
* follow clean build → run → push flow

Even though the project is simple, it reflects real DevOps practices.

---