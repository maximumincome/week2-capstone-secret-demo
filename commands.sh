#!/bin/bash

# ==========================================================
# Week 2 Capstone: Multi-Cloud IAM Policy Design
# Google Cloud Platform Setup Commands
# ==========================================================


# ==========================
# 1. Set Variables
# ==========================

PROJECT_ID="YOUR_PROJECT_ID"
REGION="us-central1"
BUCKET_NAME="YOUR_BUCKET_NAME"
SERVICE_ACCOUNT="storage-writer-sa"


# ==========================
# 2. Authenticate with GCP
# ==========================

gcloud auth login


# ==========================
# 3. Set Active Project
# ==========================

gcloud config set project $PROJECT_ID


# ==========================
# 4. Enable Required APIs
# ==========================

gcloud services enable \
storage.googleapis.com \
iam.googleapis.com \
logging.googleapis.com


# ==========================
# 5. Create Service Account
# ==========================

gcloud iam service-accounts create $SERVICE_ACCOUNT \
--display-name="Storage Writer Service Account"


# ==========================
# 6. Assign Least Privilege IAM Role
# ==========================

gcloud projects add-iam-policy-binding $PROJECT_ID \
--member="serviceAccount:${SERVICE_ACCOUNT}@${PROJECT_ID}.iam.gserviceaccount.com" \
--role="roles/storage.objectCreator"


# ==========================
# 7. Create Cloud Storage Bucket
# ==========================

gcloud storage buckets create gs://$BUCKET_NAME \
--location=$REGION


# ==========================
# 8. Verify Bucket
# ==========================

gcloud storage buckets list


# ==========================
# 9. Check IAM Permissions
# ==========================

gcloud projects get-iam-policy $PROJECT_ID


# ==========================
# 10. Enable Data Access Audit Logs
# ==========================

gcloud projects get-iam-policy $PROJECT_ID


# ==========================
# 11. Test Storage Access
# ==========================

echo "Testing storage upload..."

echo "IAM Capstone Test File" > test.txt

gcloud storage cp test.txt gs://$BUCKET_NAME


# ==========================
# 12. View Storage Objects
# ==========================

gcloud storage ls gs://$BUCKET_NAME


# ==========================
# 13. Check Current Account
# ==========================

gcloud auth list


# ==========================
# 14. Check Project Details
# ==========================

gcloud projects describe $PROJECT_ID


# ==========================
# COMPLETE
# ==========================

echo "================================"
echo "GCP IAM Capstone Setup Complete"
echo "================================"
