# Security Controls Documentation

## Credential Leak Simulation

A credential exposure scenario was simulated to understand cloud security risks.

The purpose was to demonstrate how leaked credentials can affect cloud resources.


# Threat Scenario

An attacker obtains a service account key.

Possible impact:

- Unauthorized resource access
- Data modification
- Data exposure


# Response Process

## Step 1: Detection

Identify:

- Exposed credential
- Affected account
- Potential resources accessed


## Step 2: Containment

Actions:

- Disable compromised credential
- Remove unnecessary permissions
- Restrict access


## Step 3: Recovery

Actions:

- Create new credentials
- Update applications
- Review IAM policies


## Step 4: Prevention

Improvements:

- Use Workload Identity Federation
- Avoid storing secrets in repositories
- Enable secret scanning
- Apply least privilege IAM


# Security Lessons

This exercise demonstrates why:

- Secrets must never be committed to Git repositories
- IAM permissions must be carefully controlled
- Cloud activity must be monitored
