##### GitHub Repo for This Homework Solution #####

[ 1 Create an index.html file. ]

$cat index.html

<html lang="us">
<head>
    <meta charset="UTF-8">
    <title>Telerik DevOps Course 2023 </title>
</head>
<body>
    <h1>Docker Part2 Homework</h1>
    <p> PSamardzhiev</p>
</body>
</html>


[ 2 Create a Dockerfile that is based on nginx:1.20-alpine ]

FROM nginx:1.20-alpine
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80


[ 3 Create a public image repository in docker hub ]

	docker.io/psamardzhiev/dockerhw-nginx	

GitHub Actions File:

$ cat image-push.yml
name: Publish Docker image

on:
  push:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout code
        uses: actions/checkout@v2

      - name: Set up QEMU
        uses: docker/setup-qemu-action@v1

      - name: Set up Docker Buildx
        uses: docker/setup-buildx-action@v1

      - name: Login to Docker Hub
        uses: docker/login-action@v1
        with:
          username: ${{ secrets.DOCKER_USERNAME }}
          password: ${{ secrets.DOCKER_PASSWORD }}

      - name: Build and push Docker image
        uses: docker/build-push-action@v2
        with:
          context: .
          file: ./homework1/Dockerfile
          platforms: linux/amd64
          push: true
          tags: ${{ secrets.DOCKER_USERNAME }}/dockerhw-nginx:v0.1


To run the image locally:
    docker run -d -p 80:80 --name test-container psamardzhiev/dockerhw-nginx:v0.1
