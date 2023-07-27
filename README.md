# gke-terraform


running locally 

```
gcloud iam service-accounts create <sa-name>

gcloud projects add-iam-policy-binding <projet-id> --member="serviceAccount:<sa-name>@<project-id>.iam.gserviceaccount.com" --role="roles/owner"


export GOOGLE_APPLICATION_CREDENTIALS="../my_auth.json"

cd terraform
terraform init
terraform plan
```      

