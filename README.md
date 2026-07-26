# Week 2 Capstone: Multi-Cloud IAM Policy Design

## Project Overview

This project demonstrates the design and implementation of a secure Identity and Access Management (IAM) architecture in Google Cloud Platform (GCP).

The goal of this capstone is to apply cloud security principles by:

- Creating and managing a cloud project using CLI tools
- Implementing least privilege IAM access
- Creating service accounts with restricted permissions
- Securing cloud storage resources
- Enabling audit logging for security monitoring
- Simulating credential exposure and identifying security risks


## Cloud Provider

Primary Cloud Platform:

- Google Cloud Platform (GCP)

Tools Used:

- Google Cloud CLI (`gcloud`)
- Git & GitHub
- Cloud IAM
- Cloud Storage
- Cloud Audit Logs


# Architecture Overview

The project follows a secure cloud access model:
User
|
|
IAM Authentication
|
|
Service Account
|
|
IAM Role (Least Privilege)
|
|
Cloud Storage Bucket
|
|
Audit Logs 


# Objectives

## 1. Cloud Project Setup

A new GCP project was created using the command line interface.

Tasks completed:

- Created GCP project
- Linked billing account
- Enabled required APIs
- Configured project environment


## 2. IAM Design

The IAM model follows the principle of least privilege.

Instead of granting excessive permissions, a dedicated service account was created with only the required access.

Example:

Service Account:

Purpose:

- Allow application workloads to upload objects
- Prevent unnecessary administrative access


Permissions:

The service account cannot:

- Delete buckets
- Modify IAM policies
- Access unrelated resources


# Security Controls Implemented

## Least Privilege Access

Access was restricted based on the minimum permissions required.

Benefits:

- Reduces attack surface
- Limits potential damage from compromised credentials
- Improves security compliance


## IAM Role Management

IAM roles were assigned based on responsibilities.

Example:

| Identity | Permission |
|---|---|
| Administrator | Project management |
| Service Account | Storage write access |
| User | Limited operational access |


# Cloud Storage Security

A Cloud Storage bucket was created to demonstrate controlled access.

Security considerations:

- Access controlled through IAM
- Service account authentication used
- Unauthorized access prevented


# Audit Logging

Cloud Audit Logs were enabled to monitor activity.

Logs capture:

- Who performed an action
- What action occurred
- When it happened
- Which resource was affected


Audit logging helps with:

- Security investigations
- Compliance requirements
- Detecting suspicious activity


# Credential Leak Simulation

A simulated credential exposure scenario was performed.

The objective was to understand:

- Risks of exposed service account keys
- Importance of secret management
- Detection and response procedures


Security response:

- Identify exposed credentials
- Revoke compromised keys
- Review audit logs
- Rotate credentials


# Lessons Learned

Through this project, I gained practical experience with:

- Cloud IAM concepts
- Service accounts
- Least privilege security
- Cloud Storage permissions
- Audit logging
- Cloud security best practices


# Future Improvements

Possible improvements:

- Implement Workload Identity Federation
- Remove long-lived service account keys
- Add automated security scanning
- Integrate CI/CD security checks


# Author

MaximumIncome

Cloud Security / DevOps Learning Journey
