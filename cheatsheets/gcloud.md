`gcloud` sample commands

# iam

- `gcloud iam service-accounts list`           -- list all service account

# auth

- `gcloud auth application-default login`                       -- default login
- `gcloud auth list`                                            -- auth list
- `gcloud auth activate-service-account --key-file`             -- login with keyfile

# config

- `gcloud config list project`                      -- list projects
- `gcloud config set account <account>`             -- set account
- `gcloud config set project <project>`             -- set project
- `gcloud projects list`                            -- list projects

# organizations

- `gcloud organizations list`                       -- list organizations

# compute

- `gcloud compute instances list`                   -- list compute instances

# container

- `gcloud container clusters resize cluster-1 --zone australia-southeast1-a --size <size>`           -- change the number of containers in the cluster


gcloud iam roles describe roles/dataflow.worker