gcloud functions deploy GoogleFitNotionIntegration --runtime python39 --trigger-topic=fit --region=asia-northeast1 \
    --entry-point=handler --timeout=30 --memory=128M \
    --docker-registry=artifact-registry \
    --set-env-vars=NOTION_SECRET=${NOTION_SECRET},DATABASE_ID=${DATABASE_ID} \
    --source=./src --project ${GCP_PROJECT}

