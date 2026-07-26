# Cloud Audit Logging Documentation

## Overview

Cloud Audit Logs provide visibility into activities happening inside a cloud environment.

They answer:

- Who performed an action?
- What action was performed?
- When did it happen?
- Which resource was affected?


# Types of Audit Logs

## Admin Activity Logs

Records administrative actions.

Examples:

- Creating resources
- Changing IAM permissions
- Modifying configurations


## Data Access Logs

Records access to data resources.

Examples:

- Reading storage objects
- Writing storage objects


## System Event Logs

Records automated actions performed by Google Cloud.


# Security Importance

Audit logs help with:

- Detecting suspicious activities
- Investigating security incidents
- Meeting compliance requirements
- Monitoring user behavior


# Example Investigation Scenario

Scenario:

A service account key is exposed publicly.

Investigation process:

1. Identify compromised credential
2. Check audit logs
3. Find unauthorized actions
4. Revoke credential
5. Rotate keys
6. Apply improved security controls


# Security Principle

Logging without monitoring is incomplete.

Organizations should combine:

- Audit logs
- Alerts
- Security monitoring
- Incident response procedures
