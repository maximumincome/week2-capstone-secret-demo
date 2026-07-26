# IAM Design Documentation

## Overview

Identity and Access Management (IAM) controls who can access cloud resources and what actions they can perform.

This project follows the principle of least privilege by providing users and workloads only the permissions required to complete their tasks.


# IAM Architecture
Human User
|
|
Authentication
|
|
IAM Policy
|
|
Resource Access

Application Workload
|
|
Service Account
|
|
Assigned IAM Role
|
|
Cloud Storage Bucket
# Service Account Design

A dedicated service account was created for application access.

Example:


storage-writer

Purpose:

- Upload objects to Cloud Storage
- Perform application-level storage operations
- Avoid using personal user credentials


# Permission Model

The service account receives a limited IAM role:
Storage Object Creator


Allowed:

✅ Create objects in bucket

Denied:

❌ Delete objects  
❌ Delete buckets  
❌ Modify IAM policies  
❌ Access unrelated resources  


# Why Least Privilege?

Least privilege reduces security risk.

If credentials are compromised:

- Attackers have limited permissions
- Damage is contained
- Unauthorized administrative actions are prevented


# IAM Best Practices Applied

- Avoid using owner permissions for applications
- Use dedicated service accounts
- Assign roles based on required tasks
- Regularly review permissions
- Remove unused credentials
