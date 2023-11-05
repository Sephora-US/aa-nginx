To Build for GCP
```
docker build -f Dockerfile.gcp -t aa-nginx:latest .
```


To Build for Azure
```
docker build -f Dockerfile.gcp -t aa-nginx:latest .
```

To Tag
```
docker tag aa-nginx gcr.io/sep-poc-aa-hackathon-prj/aa-gcr/aa-nginx:latest
```


To push to GCR
```
docker push gcr.io/sep-poc-aa-hackathon-prj/aa-gcr/aa-nginx
```


Prerequisites
```
 kubectl create secret docker-registry  gcr-json-key --docker-server=https://gcr.io --docker-username=_json_key --docker-email=aa-gcr-sa@sep-poc-aa-hackathon-prj.iam.gserviceaccount.com --docker-password="$(cat gcp-terraform/aa-gcr-sa-key.json)"
 note: The file will be created under tf repo

  kubectl patch serviceaccount default -p '{"imagePullSecrets": [{"name": "gcr-json-key"}]}

```