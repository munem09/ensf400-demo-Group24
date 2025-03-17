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
  - wahid
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
  - *#2* Created Docker image
  - *#3* Updated Dockerfile with better code
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

- *Repository Cleanup*
  - Branches are deleted after merging to keep the repository organized.

---

## *5. GitHub Actions Workflow (CI/CD)*
A *GitHub Actions workflow* is used for:
- *Building the Docker image* using the updated Dockerfile
- *Pushing the image* to Docker Hub
- *Ensuring automated testing (if applicable)*

### *Workflow File Location*
- .github/workflows/docker-build.yml

### *Workflow Steps*
1. *Triggers on push to main branch*  
2. *Builds a Docker image* using the latest code  
3. *Pushes the image* to *Docker Hub* for deployment  
4. *Runs automated tests (if enabled in future iterations)*  

---

## *6. Deployment & Containerization*
- Docker container is uploaded to *Docker Hub*.
- *Docker Hub URL*: (NOT DONE YET)

### *Docker Commands Used*
bash
docker build -t my-team/ensf400-project:latest .
docker push my-team/ensf400-project:latest


---

## *7. Screenshots for Submission*
To demonstrate collaboration, we included:
 *GitHub contribution history (commits from all team members)*  
 *Pull request logs (code review process)*  
 *Docker image push logs*  

---

## *8. Next Steps & Best Practices*
- Continue using feature branches to avoid direct commits to main.
- Automate testing in *GitHub Actions* to prevent breaking changes.
- Ensure all members contribute code and documentation to show collaboration.
- Keep Docker images *updated and optimized* for future builds.

---

