# Grafana Create User Helm Chart

* Helm chart to create users with diffrent roles on Grafana running instance.

## Requirements

Ensure you have the following requirements:
   - A running Grafana instance in k8s cluster
   - Shell environment with `docker`, `git`, `helm` and `kubectl`.
   
## Method Explanation

Grafana is exposing HTTP API which can be used for various options.
We will use basic authentication with Grafana user which have the server administrator permissions and create 3 distinct local users with 3 different roles.
In order to achieve it, the following steps need to be done:
1. Bash script will need to be written in order to call Grafana API to create the users and assign roles.
2. Dockerfile will need to be written in order to create a docker image that will run the bash script and will be deployed in k8s job.
3. A new Helm chart will need to be written in order to run the continer as k8s job.
4. All the required users details will need to be added prior to Helm chart deployment. 

We will need to build a Dockerfile, push it to a Docker registry, write a Helm chart and provide details regarding the required users and eventually deploy the Helm chart in a k8s cluster.
