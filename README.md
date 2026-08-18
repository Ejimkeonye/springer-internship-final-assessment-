

![CI](https://github.com/Ejimkeonye/springer-internship-final-assessment-/actions/workflows/ci.yml/badge.svg)



# DevOps Intern Final Assessment

**Name:** Ejim Egwu 
**Date:** August 18, 2026

## Description
This repo demonstrates a small end-to-end DevOps workflow: a Python script
is containerized with Docker, automatically run on every push via GitHub
Actions, deployed as a Nomad job, and monitored with logs forwarded to
Grafana Loki.

## Docker
docker build -t hello-devops .
docker run --rm hello-devops

## Nomad
nomad agent -dev -config=docker.hcl
nomad job run nomad/hello.nomad
nomad job status hello
nomad alloc logs <alloc-id>

## Monitoring (Loki)
MSYS_NO_PATHCONV=1 docker run -d --name=loki -p 3100:3100 grafana/loki:2.9.0 -config.file=/etc/loki/local-config.yaml
docker plugin install grafana/loki-docker-driver:latest --alias loki --grant-all-permissions
MSYS_NO_PATHCONV=1 docker run --rm --log-driver=loki --log-opt loki-url="http://localhost:3100/loki/api/v1/push" hello-devops

## Extra Credit: MLflow
python mlflow/log_experiment.py
python -m mlflow ui
# View at http://localhost:5000
