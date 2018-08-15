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
$ docker-compose run --rm --no-deps app php artisan key:generate
$ docker run --rm -it -v $(pwd):/app -w /app node npm install
$ docker-compose up -d
```

 
Now you can access the application via http://localhost:8000.

And then, compile the assets :
```
$ docker run --rm -it -v $(pwd):/app -w /app node npm run dev
```

run migrations
```
$ docker-compose run --rm app php artisan migrate 
```

run seeders 
```
$ docker-compose run --rm app php artisan db:seed 
```

There is no need to run php artisan serve. PHP is already running in a dedicated container.

for any artisan command just run
```
$ docker-compose run --rm app (your artisan command)
```
# Authors
Ulrich Ntella Senior Backend developer

# Contributing
Do not hesitate to contribute to the project by adapting or adding features ! Bug reports or pull requests are welcome.

# License
This project is released under the MIT license.


