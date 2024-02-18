gcloud services enable fitness.googleapis.com
gcloud pubsub topics create fit --project=${GCP_PROJECT}
gcloud scheduler jobs create pubsub fit_job --schedule="00 00 * * *" --topic=fit --message-body="go" --time-zone="Asia/Tokyo" --location="asia-northeast1" --project=${GCP_PROJECT}
