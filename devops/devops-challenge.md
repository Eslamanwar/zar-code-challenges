# DevOps Engineer Coding Challenge

Welcome to the DevOps coding challenge! This assignment assesses your practical skills in Infrastructure as Code, CI/CD automation, containerization, and cloud deployment.

## Objective

Deploy a provided Python Flask web application using modern DevOps practices:

* Infrastructure as Code (IaC)
* Containerization with Docker
* CI/CD automation
* Kubernetes Deployment (Cloud provider of your choice: AWS, GCP, or Azure)

---

## Task Description

### Application Repository

* The application code is available here: [simple-flask-app](./simple-flask-app/)

### Requirements

1. **Containerize the Flask App**

   * Write a Dockerfile to containerize the Flask application.

2. **Infrastructure as Code (IaC)**

   * Use Terraform or another IaC tool to provision infrastructure on AWS.
   * Required resources:
     * Kubernetes cluster (Managed Kubernetes Service)
     * Networking setup (basic VPC/VNet setup with public access to your app)

3. **CI/CD Automation**

   * Set up a CI/CD pipeline using GitHub Actions.
   * Automate Docker image building, tagging, and pushing to Docker Hub or another registry.
   * Automate deployment to Kubernetes after successful build.

4. **Kubernetes Deployment**

   * Write Kubernetes manifests to deploy your containerized app.
   * Include basic health checks (liveness and readiness probes).
   * Expose the application via a Load Balancer service.

5. **Documentation**

   * Provide a detailed and clear README.md with instructions to deploy the solution end-to-end.
   * Briefly explain your architectural choices.

---

## Submission

* Fork this repository.
* Implement your solution in your fork.
* Create a Pull Request back to this repository upon completion.

---

## Evaluation Criteria

* **IaC Quality:** Clear, maintainable, secure Terraform or IaC code.
* **Docker Usage:** Proper Dockerfile construction (minimal layers, security considerations).
* **CI/CD Quality:** Automation robustness, error handling, and best practices.
* **Kubernetes:** Correctness and clarity of Kubernetes manifests, effective health probes.
* **Documentation:** Clarity and completeness of README and explanations.

---

## Time Limit

* Complete this challenge within 72 hours.

Happy coding!
