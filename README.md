# gke-terraform


Initial setup setup.sh to be moved to terraform i.e. IAM.tf creating service account and role bindings. 

```
gcloud iam service-accounts create terraform-ci

gcloud projects add-iam-policy-binding <projet-id> --member="serviceAccount:terraform-ci@<project-id>.iam.gserviceaccount.com" --role="roles/owner"
export GOOGLE_APPLICATION_CREDENTIALS="auth.json"


terraform plan
```     




