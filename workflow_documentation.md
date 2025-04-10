### *GitHub Workflow Documentation for ENSF400 Project*

#### *Project Repository*  
- *Repository Name*: ensf400-demo-Group24  
- *Hosted on*: GitHub  
- *Team Members*:  
  - Himel Paul  
  - M Munem Morshed
  - SM Wahid Chowdhury
  - Maliha Chowdhury Adrita
 
---

## *1. Overview*
This repository follows a *collaborative workflow* using GitHub features such as:
- *Feature branches*
- *Pull requests*
- *Code reviews and merges*
- *Dockerfile management*
- *Gradle configuration for build automation*

The goal of this workflow is to ensure a structured and efficient development process, maintaining version control and smooth team collaboration.

---

## *2. Branching Strategy*
- Each team member works on a *feature branch* before merging changes into master.
- Example branches:
  - munem-branch
  - Wahid
  - Himel
  - Maliha
- After completion, branches are merged via *pull requests*.
- Deleted branches after merging to maintain a clean repository.

---

## *3. Pull Request Workflow*
- *Pull Requests (PRs) are required for merging into master.*
- Team members review the code before merging PRs.
- Example PRs:
  - *#1* Merged wahid branch into master
  - *#2* Improved Dockerfile with better code
  - *#3* Uploaded completely running Dockerfile
  - *#4* Created Workflow Documentation

---

## *4. Key Contributions*
- *Dockerfile Improvements*
  - Refactored and updated by multiple contributors 
  - Ensured compatibility with Gradle 7.6.1 and JDK 11
  - Fixed issues related to *Gretty version compatibility*

- *Build System*
  - Configured Gradle environment for the project
  - Addressed compatibility issues with Gretty 3.0.4

---

## *5. GitHub Actions Workflow*
A *GitHub Actions workflow* is used for:
- *Building the Docker image* using the updated Dockerfile
- *Pushing the image* to Docker Hub

---

## *6. Deployment & Containerization*
- Docker container is uploaded to *Docker Hub*.
- *Docker Hub URL*: https://hub.docker.com/layers/munem09/ensf400-group24/ensf400_image1/images/sha256-342599e73b04337a6972af884361dbf63a603ba8ec320ea6b19bcbfc30792f14

### *Docker Commands Used*
bash
Build: docker build -t desktop-app .
Run:  docker run -p 8080:8080 desktop-app


---

## *7. Screenshots for Submission*
To demonstrate collaboration, we included:
![image](https://github.com/smw989/ensf400-demo-Group24/blob/master/Activity_images/A1.jpg?raw=true)
![image](https://github.com/smw989/ensf400-demo-Group24/blob/master/Activity_images/A2.jpg?raw=true)
![image](https://github.com/smw989/ensf400-demo-Group24/blob/master/Activity_images/A3.jpg?raw=true)
![image](https://github.com/smw989/ensf400-demo-Group24/blob/master/Activity_images/A4.jpeg?raw=true)
![image](https://github.com/smw989/ensf400-demo-Group24/blob/master/Activity_images/A5.jpeg?raw=true)
![image](https://github.com/smw989/ensf400-demo-Group24/blob/master/Activity_images/download_image.jpg?raw=true)
---

## *8. Next Steps & Best Practices*
- Continue using feature branches to avoid direct commits to main.
- Ensure all members contribute code and documentation to show collaboration.
- Keep Docker images *updated and optimized* for future builds.

---

