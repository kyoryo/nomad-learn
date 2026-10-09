# Set up a Nomad cluster on the major cloud platforms

This repo is a companion to the [Cluster Setup](https://developer.hashicorp.com/nomad/tutorials/cluster-setup) collection of tutorials, containing configuration files to create a Nomad cluster with ACLs enabled on AWS, GCP, and Azure.

# build cross complie docker

```bash
 docker buildx build \
  --platform linux/amd64 \
  -t <id>.dkr.ecr.<region>.amazonaws.com/healthapp:latest \
  --push .
```
