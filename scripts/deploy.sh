#!/bin/bash
set -e

PROJECT_ID="shailaja-477403"
REGION="us-central1"
APP_NAME="backend-app"
REPO="cloudrun-repo"
IMAGE="us-central1-docker.pkg.dev/${PROJECT_ID}/${REPO}/${APP_NAME}:v1"

echo "🛠️ Building Docker image..."
gcloud builds submit ../app/ --tag $IMAGE --project=$PROJECT_ID

echo "🌍 Initializing Terraform..."
cd ../terraform
terraform init

echo "🚀 Applying Terraform..."
terraform apply -auto-approve   -var="project_id=$PROJECT_ID"   -var="region=$REGION"   -var="app_name=$APP_NAME"   -var="image_url=$IMAGE"

SERVICE_URL=$(terraform output -raw service_url)
echo "✅ Backend deployed successfully!"
echo "🌐 Application URL: $SERVICE_URL"
