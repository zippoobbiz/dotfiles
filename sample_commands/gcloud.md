# gcloud sample commands

## iam

gcloud iam service-accounts list

## auth

gcloud auth application-default login
gcloud auth list
gcloud auth activate-service-account --key-file

## config

gcloud config list project
gcloud config set account <account>
gcloud config set project <project>
gcloud projects list

## organizations

gcloud organizations list

## compute

gcloud compute instances list

## container

gcloud container clusters resize cluster-1 --zone australia-southeast1-a --size <size>