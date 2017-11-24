# **NGINX** docker container for **Angular** applications

## 1.  Reproduce it

### 1.1 Clone this repo:

`$ git clone https://github.com/cbelda/nginx4angular.git`

### 1.2 Build the image:

```
$ cd nginx4angular
$ docker build -t nginx4angular .
```

### 1.3 Run the Docker container:

```
$ docker run -it -d -p 80:80 --name=mynginx4angular nginx4angular
```

### 1.4 Make the nginx container serve your app by copying the `dist/` content in the `html/` nginx directory:

```
$ docker cp my/ng/project/dist/. mynginx4angular:/usr/share/nginx/html/
```

## 2. Use it directly

This image is already published in the [Docker Hub](https://hub.docker.com/r/cbelda/nginx4angular/).

### 2.1 Pull the image from the hub:

```
$ docker pull cbelda/nginx4angular
```

### 2.2 Run the Docker container:

```
$ docker run -it -d -p 80:80 --name=mynginx4angular cbelda/nginx4angular
```

### 2.3 Make the nginx container serve your app by copying the `dist/` content in the `html/` nginx directory:

```
$ docker cp my/ng/project/dist/. mynginx4angular:/usr/share/nginx/html/
```