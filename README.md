

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
