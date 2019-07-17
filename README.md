# Career Lattice

This application is used for employees to view the career ladder. Admins will have editting capabilities. 

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites
1. Run SQL script in root of project. 

```
SOURCE SQLstructure.sql
```

2. Create a mysql database user in MYSQL. (edit username, password and permissions to own need.)

```
drop user if exists username@localhost;
create user username@localhost identified with mysql_native_password by 'password';
grant all on klattice.* to username@localhost;
```

2. Use the same user login details in the api.js.

```
const db = mysql.createConnection({
    host: 'localhost',
    user: 'username',
    password: 'password',
    database: 'klattice'
});
```

### Installing

A step by step series of examples that tell you how to get a development env running

API - Express setup

```
npm install express
```

API - MYSQL 

```
npm install mysql
```

Front-end - Angular

```
npm install angular
```

## Running the project

Run Angular 

```
npm start
```

Run API 

```
node app.js
```

Currently setup to run on localhost:4200

## Built With

* [Angular](http://www.dropwizard.io/1.0.2/docs/) - Web framework
* [Express](https://maven.apache.org/) - API
* [MYSQL](https://rometools.github.io/rome/) - Database

## Contributing

Please read [pull_request_template.md]() for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

N/A

## Authors

See the list of [contributors](https://github.com/Broom94/Klattice/graphs/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Matthew O'Reilly
* Megan O'Kane
