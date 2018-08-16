# laravel5.7-docker
 [Donate Paypal](https://paypal.me/ulrich2002).

# Prerequisites:

Docker >= 17.06 CE
Docker Compose
Setting up your development environment on your local machine :


# Installing
```
$ git clone https://github.com/ul2002/laravel5.7-docker.git
$ cd laravel5.7-docker
$ cp .env.example .env
```
build our image 
```
$ docker-compose build
```
run the app in the background, in detached mode:
```
$ docker-compose up -d
```


you can ssh now inside the container of your app

before ssh , get your container name. 
You get the container NAMES for your app and then are kicked back to your terminal. Your container is running in the background. You can also see the abbreviated container ID with docker container ls (and both work interchangeably when running commands):

$ docker container ls
```
 CONTAINER ID        IMAGE                   COMMAND                  CREATED             STATUS              PORTS                  -                    NAMES

 d7ed31e802e5        laravel57-docker_app    "/bin/bash /entrypoi…"   26 seconds ago      Up 22 seconds       0.0.0.0:80--->80/tcp, 0.0.0.0:443->443/tcp   laravel57-docker_app_1

```

probably you will see something like this ``laravel57-docker_app_1`` 
you can ssh now inside the container,then run this 
```
$ docker exec -it laravel57-docker_app_1 bash
```

and then run the following comands
```
$ php artisan key:generate
$ php artisan migrate 
$ php artisan db:seed 
$ exit
```
you are free to run any bash commands depend of your app

and then start your service
```
$ docker-compose up 
```
 
Now you can access the application via http://localhost
and phpMyadmin via  http://localhost:8080

you should ssh inside your container if you would like to install something like dependencies or run artisan commands
you can also use docker-compose command  https://docs.docker.com/compose/reference/

There is no need to run php artisan serve. PHP is already running in a dedicated container.

# Authors
  [Ulrich Ntella](https://www.linkedin.com/in/ulrichsoft/). Senior Backend developer

# Contributing
Do not hesitate to contribute to the project by adapting or adding features ! Bug reports or pull requests are welcome.

# License
This project is released under the MIT license.


