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
$ docker-compose build
```

you can ssh now inside the container of your app
```
$ docker exec -it laravel57-docker_app_1 bash
```

laravel57-docker is your app name

and then run the following comands
```
$ php artisan migrate 
$ php artisan db:seed 
$ php artisan key:generate
$ exit
```

and then start your service
```
$ docker-compose up 
```

 
Now you can access the application via http://localhost


There is no need to run php artisan serve. PHP is already running in a dedicated container.

for any artisan command , you can also ssh  inside the container of your app
```
$ docker exec -it laravel57-docker_app_1 bash
```

laravel57-docker is your app name
and then run any bash comands
```
bash#  $ 
```
# Authors
  [Ulrich Ntella](https://www.linkedin.com/in/ulrichsoft/). Senior Backend developer

# Contributing
Do not hesitate to contribute to the project by adapting or adding features ! Bug reports or pull requests are welcome.

# License
This project is released under the MIT license.


