gcloud services enable servicenetworking.googleapis.com &&
gcloud services enable cloudresourcemanager.googleapis.com &&
gcloud services enable container.googleapis.com &&
gcloud services enable compute.googleapis.com


gcloud iam service-accounts create terraform-ci

$ gcloud projects add-iam-policy-binding gke-terraform-393907 --member serviceAccount:terraform-ci@gke-terraform-393907.iam.gserviceaccount.com --role roles/iam.serviceAccountUser
$ gcloud projects add-iam-policy-binding gke-terraform-393907 --member serviceAccount:terraform-ci@gke-terraform-393907.iam.gserviceaccount.com --role roles/resourcemanager.projectIamAdmin
$ gcloud projects add-iam-policy-binding gke-terraform-393907 --member serviceAccount:terraform-ci@gke-terraform-393907.iam.gserviceaccount.com --role roles/container.admin
$ gcloud projects add-iam-policy-binding gke-terraform-393907 --member serviceAccount:terraform-ci@gke-terraform-393907.iam.gserviceaccount.com --role roles/compute.admin


gcloud projects add-iam-policy-binding gke-terraform-393907  --member="serviceAccount:terraform-ci@gke-terraform-393907.iam.gserviceaccount.com" --role="roles/owner"

gcloud iam service-accounts keys create terraform-ci.json --iam-account=terraform-ci@gke-terraform-393907.iam.gserviceaccount.com 


