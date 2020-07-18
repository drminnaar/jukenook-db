# Jukenook Db

_Jukenook Db_ is a database management project that is used to manage database versioning, migration and infrastructural concerns.

---

## About

_Jukenook Db_ is based on the _[Chinook Database Project]_. The _[Chinook Database Project]_ is a sample database that is available to be used with a number of database engines such as Postgres, SQL Server, and MySQL for example. The Chinook data model represents a digital media store, including tables for artists, albums, media tracks, invoices and customers. To see the full description and supported databases, please visit the _[Chinook Database Project]_. All credit goes to the _[Chris Woodruff]_ _[Chinook Database Project]_.

The reason for creating this project is due to a continuous need for a consistent database structure that I can use when experimenting with different application development ideas. I searched for a data model that is simple and with the potential to evolve into something more sophisticated over time. After investigating a number of different options, I decided on the _[Chinook Database Project]_. I have taken the original _[Chinook Database Project]_ and changed it to work specifically with a [Postgres] database engine using [Flyway] migrations. I will also continue to evolve _Jukenook Db_ as I experiment with different ideas.

---

## Why Jukenook

I didn't want to keep to the same name of _Chinook_ as the original _[Chinook Database Project]_ due to the fact that I will be changing the data model. I also wanted to create a fictitious online business that I can build applications for. Because the primary database concept is focused around music, I decided to take inspiration from a the naming of [Jukebox] and [Chinook] and combine the 2 names into _Jukenook_. A 'nook' also happens to be a corner or recess, and I think that makes a good place to locate a Jukebox :thinking:

---

## Purpose

### Primary Objective

The primary objective for this project is to provide a [Postgres] database that can be easily deployed into one's local development environment.

### Secondary Objectives

- Show how to use [Flyway] to manage database versioning and migration
- Show how to setup a [Postgres] database using [Docker] and [Docker-Compose]
  - Defining docker-compose file to create local [Postgres] environment using the Postgres 12 and [pgAdmin]
  - Defining docker-compose files that provide an easy way to work with [Flyway] using [Flyway Docker Image]

---

## Supported Platforms

This project has been successfully tested on the following platforms:

- [Ubuntu 20.04] - Ubuntu is an open source software operating system that runs from the desktop, to the cloud, to all your internet connected things.
- [Windows 10 Professional (2004)] - Latest version of Windows 10 operating system. For this particular platform I used [Powershell Command Line] to execute project tasks.
- [Windows Subsystem For Linux 2] (Windows 10 Professional (2004)) - WSL 2 is based on a new architecture that provides full Linux binary application compatibility and improved performance. WSL 2 is powered by a real Linux kernel in a lightweight virtual machine that boots in under two seconds. Specifically, the [Ubuntu 20.04] distribution was used.

---

## Tools

The following list of tools are required in order to run this project correctly:

- [Docker] - Docker is a computer program that performs operating-system-level virtualization also known as containerization. In other words it allows one to containerize applications.
- [Docker-Compose] - Compose is a tool for defining and running multi-container Docker applications.
- [Flyway] - Version control for your database by making database migrations repeatable and easy
- [Postgres] - PostgreSQL, also known as Postgres, is a free and open-source relational database management system emphasizing extensibility and technical standards compliance. It is designed to handle a range of workloads, from single machines to data warehouses or Web services with many concurrent users.
- [pgAdmin] - Open Source administration and development platform for PostgreSQL
- [Visual Studio Code] - Visual Studio Code is a source code editor developed by Microsoft for Windows, Linux and macOS. It includes support for debugging, embedded Git control, syntax highlighting, intelligent code completion, snippets, and code refactoring.
- [Npm] - A package manager for the Javascript programming language. In this project it is used as a task runner to simplify running various infrastructural tasks

---

## Getting Started

In order to successfully run the _Jukenook_ database project, you will require the following tools and frameworks to be installed:

- [Docker]
- [Docker-Compose]
- [Npm]

For this project, every database definition will be described using a number of database migration scripts. The database migration scripts are defined as per the _[Flyway]_ database versioning and migration tool guidelines. _[Flyway]_ is an open-source database migration tool that favors simplicity and convention over configuration. For more information, please see the following links:

- [Official Flyway Website](https://flywaydb.org/getstarted/)
- [Getting Started Guide] (by Douglas Minnaar)

### Get the repository

```bash
git clone https://github.com/drminnaar/jukenook-db.git
```

### Manage Database

#### Spinning Up

This step will create an empty _Jukenook_ database running in a docker container. The ```docker-compose.yml``` file is used to: 

- create a Postgres12 (running on Linux Alpine) database in a docker container
- load pgAdmin application via docker container. The pgAdmin application is accessible at http://localhost:8080

```bash
npm run dev-up
```

#### Tearing Down

This step will:
- stop and remove all related docke containers
- remove all related docker volumes
- remove all related docker networks

```bash
npm run dev-down
```

### Manage Database Migrations

For the following commands, the [Flyway] database versioning and migration tool is used.

#### Get Database Migrations Info

This command will return a list of migrations with relevant information like the migration state.

```bash
npm run dev-db:info
```

#### Validate Database Migrations

This command will validate pending migrations and return information relating to the validity thereof.

```bash
npm run dev-db:validate
```

#### Run Database Migrations

This command will run the actual migrations on the database.

```bash
npm run dev-db:migrate
```

## Versioning

I use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/drminnaar/chinook-db/tags).

## Authors

* **Douglas Minnaar** - *Initial work* - [drminnaar](https://github.com/drminnaar)

[Chinook Database Project]: https://github.com/cwoodruff/ChinookDatabase
[Chinook]: https://github.com/cwoodruff/ChinookDatabase
[Chris Woodruff]: https://github.com/cwoodruff
[Flyway]: https://flywaydb.org/
[Getting Started Guide]: https://github.com/drminnaar/flyway
[Postgres]: https://www.postgresql.org
[Docker]: https://www.docker.com
[Docker-Compose]: https://docs.docker.com/compose
[Jukebox]: https://en.wikipedia.org/wiki/Jukebox
[Flyway Docker Image]: https://hub.docker.com/r/flyway/flyway
[Npm]: https://www.npmjs.com
[pgAdmin]: https://www.pgadmin.org
[Powershell Command Line]: https://en.wikipedia.org/wiki/PowerShell
[Visual Studio Code]: https://code.visualstudio.com
[Windows Subsystem For Linux 2]: https://docs.microsoft.com/en-us/windows/wsl/wsl2-index
[Windows 10 Professional (2004)]: https://www.microsoft.com/en-us/p/windows-10-pro/df77x4d43rkt
[Ubuntu 20.04]: https://ubuntu.com/download/desktop