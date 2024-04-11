
# CICD Pipeline

## Table of Contents

1. [What is CI/CD?](#what-is-cicd)
2. [What is the need for CI/CD?](#what-is-the-need-for-cicd)

## What is CI/CD?

<!-- add image cicd.png -->
![](https://res.cloudinary.com/duu0rz6oz/image/upload/v1712833036/cicd_axlujr.png)

Continuous Integration and Continuous Delivery/Deployment (CI/CD) is a software development practice that automates the building, testing, and deployment of applications. It helps streamline the software release process, enabling developers to deliver code changes more frequently and reliably.

CI/CD works by integrating several essential steps into an automated pipeline:

1. **Continuous Integration (CI)**: Developers frequently commit their code changes to a shared repository. Whenever a commit is made, the CI process automatically builds the application and runs tests to catch any issues introduced by the new code. This helps identify and address integration problems early in the development cycle.

2. **Continuous Delivery (CD)**: If the build and tests are successful in the CI stage, the CD process automatically deploys the application to a staging or production-like environment. This environment is typically used for further testing and validation before the final production deployment.

3. **Continuous Deployment**: After the application has been thoroughly tested and validated in the staging environment, the CD process can automatically deploy the changes to the production environment, making the new features or updates available to end-users.

## What is the need for CI/CD?

Imagine you're a team developing a shopping cart application for a website. Traditionally, without CI/CD, the process might look like this:

1. **Developer A** makes changes to the code, fixes a bug related to adding items to the cart.
2. **Developer A** manually builds the entire application. This might involve compiling code, creating databases, etc.
3. **Developer A** then deploys the built application to a testing environment (a copy of the website used for testing). This could involve manually uploading files or running scripts.
4. **A tester** then tests the functionality, including adding items to the cart. They discover a new bug where the quantity doesn't update correctly.
5. **Developer A** needs to fix the bug, repeat steps 2 and 3, and the tester needs to retest again.

This process is slow and error-prone. Each manual step is a chance for mistakes. Additionally, if multiple developers are working on the codebase at the same time, merging their changes can become a complex task (integration issues).

**Here's how CI/CD can improve this process:**

* **Continuous Integration:** Whenever a developer (like Developer A) commits their code changes, an automated script is triggered. This script builds the entire application and runs a suite of automated tests. These tests can check if the application builds successfully, if basic functionalities like adding items to the cart work correctly, and if there are any regressions (previously working features breaking).
* **Continuous Delivery:** If all the tests pass, the built application is automatically deployed to the testing environment. This eliminates the need for manual deployments and reduces the risk of errors.

**Benefits in this example:**

* **Faster Bug Fixes:** The tester finds the bug much quicker because the application is automatically deployed after every code change. Developer A can fix the bug, commit the changes, and see the fix reflected in the testing environment within minutes.
* **Improved Quality:** The automated tests ensure that new changes haven't broken existing functionality. This helps to catch bugs early and prevents regressions.
* **Reduced Errors:** By automating the build and deployment process, there's less chance of human error creeping in.

CI/CD allows the development team to iterate quickly, fix bugs faster, and deliver a more stable and reliable shopping cart application. 

## Prerequisites for this project

**You should know basics this:**

1. **Docker**

  Docker is a platform for building, deploying, and running applications in containers. You'll need to have Docker installed on your local machine or server.

  - [Official Docker Documentation](https://docs.docker.com/)
  - [Get Docker](https://docs.docker.com/get-docker/)

2. **Git and GitHub**

  Git is a distributed version control system, and GitHub is a web-based hosting service for Git repositories. You'll need a GitHub account and a local Git installation.

  - [Official Git Documentation](https://git-scm.com/doc)
  - [Download Git](https://git-scm.com/downloads)
  - [GitHub](https://github.com/)

3. **AWS EC2**

  Amazon Elastic Compute Cloud (EC2) is a web service that provides secure, resizable compute capacity in the cloud. You'll need an AWS account and an EC2 instance to deploy and run your application.

  - [AWS EC2 Documentation](https://docs.aws.amazon.com/ec2/index.html)
  - [Create an AWS Account](https://aws.amazon.com/premiumsupport/knowledge-center/create-and-activate-aws-account/)
  - [Launch an EC2 Instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EC2_GetStarted.html)
