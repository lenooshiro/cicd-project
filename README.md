This is a complete CI/CD environment, created as a study project by a DevOps Engineer.

It consists of:
- node.js webapp with mongodb and mongo-express
- Docker container that runs using Docker Compose
- Private Docker Registry used to store the docker image built
- Jenkins ci/cd platform with a complete pipeline
- Grafana as a monitoring tool

The pipeline have the following stages:
- Code build
- Run unit tests
- Build docker image
- Push docker image do docker repository
- Deploy in test environment

Improvements ideas:
- Repository for artifacts
- SonarQube for code quality
- Trivy for vulnerabilities scan

============================================================================================

"HOW TO RUN"

Requirements:
- docker

1) Build the docker image as "cicd-webapp:1.0" with the command:
docker build -t cicd-webapp:1.0 .

2) Run the docker-compose.yaml file using the command:
docker-compose up -d

3) The webapp container will fail. You need to create a db and a collection in order to work. You can access the mongo-express interface in "localhost:8081".
DB: "my-db"
Collection: "users"

4) Restart the webapp container, it should work now. You can access it in "localhost:3000".

// Under construction...