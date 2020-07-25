![jukenook](https://user-images.githubusercontent.com/33935506/88454072-d6bd6300-cec0-11ea-8c37-d382409262c9.png)

# Jukenook Db

_Jukenook Db_ is a reference project that demonstrates how to:

- create a [PostgreSQL] environment using [Docker] and [Docker-Compose]
- configure database versioning and migration using [Flyway]

---

## About

_Jukenook Db_ is based on the _[Chinook Database Project]_. The _[Chinook Database Project]_ is a sample database that is available to be used with a number of database engines such as Postgres, SQL Server, and MySQL for example. The Chinook data model represents a digital media store, including tables for artists, albums, media tracks, invoices and customers. To see the full description and supported databases, please visit the _[Chinook Database Project]_. All credit goes to the _[Chris Woodruff]_ _[Chinook Database Project]_.

The reason for creating this project is due to a continuous need for a consistent database structure that I can use when experimenting with different application development ideas. I searched for a data model that is simple, yet has the potential to evolve into something more sophisticated over time. After investigating a number of different options, I decided on the _[Chinook Database Project]_. I have taken the original _[Chinook Database Project]_ and changed it to work specifically with a [Postgres] database engine using [Flyway] migrations. I will also continue to evolve _Jukenook Db_ as I experiment with different ideas.

---

## Why The Name

Firstly, I chose not to keep the original name _'Chinook ([Chinook Database Project])'_. This is primarily due to reasons involving the evolution of the database model over time.

Secondly, Because the primary database concept is focused around music, I decided to take inspiration from a musical [Jukebox]. Therefore, I combined the naming of [Jukebox] and [Chinook] to form the new name _'Jukenook'_. A 'nook' also happens to be a corner or recess, and I think that makes a good place to locate a Jukebox :thinking:

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

## General Tools

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

```text
git clone https://github.com/drminnaar/jukenook-db.git
```

### Manage Database

I have created _docker-compose_ files to help with the management of bringing up and taking down a PostgreSQL database environment. I also provide _docker-compose_ files to help manage the database migrations and versioning. For example:

- docker-compose.yml - Defines the PostgreSQL and pgAdmin services
- docker-compose-dev-flyway:info.yml - Runs Flyway migration to obtain information about migrations
- docker-compose-dev-flyway:migrate.yml - Runs Flyway migration to do actual database migrations
- docker-compose-dev-flyway:validate.yml - - Runs Flyway migration to validate migrations

In order to make it simpler to manage the environment, I have created an NPM package file wherein I have defined a number of tasks. For example:

```json
"scripts": {
    "dev-db:up": "docker-compose up -d",
    "dev-db:down": "docker-compose down --volumes && docker-compose -f ./flyway/docker-compose-dev-flyway:info.yml -f ./flyway/docker-compose-dev-flyway:validate.yml -f ./flyway/docker-compose-dev-flyway:migrate.yml down",
    "dev-db:migrate": "docker-compose -f ./flyway/docker-compose-dev-flyway:migrate.yml up",
    "dev-db:info": "docker-compose -f ./flyway/docker-compose-dev-flyway:info.yml up",
    "dev-db:validate": "docker-compose -f ./flyway/docker-compose-dev-flyway:validate.yml up",
    "start": "npm run dev-db:down && npm run dev-db:up"
  }
```

I generally prefer using NPM as a task runner unless I have more advanced requirements.

#### Spinning Up

This step will create an empty _Jukenook_ database running in a docker container. The `docker-compose.yml` file is used to:

- create a Postgres12 (running on Alpine Linux) database in a docker container
- load pgAdmin application via docker container. The pgAdmin application is accessible at <http://localhost:8080>

```text
$ npm run dev-up

> jukenook-db@1.0.0 dev-db:up /home/dmin/projects/jukenook/jukenook-db
> docker-compose up -d

Creating network "jukenook_net" with the default driver
Creating jukenook_db    ... done
Creating jukenook_admin ... done
```

#### Tearing Down

This step will:

- stop and remove all related docke containers
- remove all related docker volumes
- remove all related docker networks

```text
$ npm run dev-down

> jukenook-db@1.0.0 dev-db:down /home/dmin/projects/jukenook/jukenook-db
> docker-compose down --volumes && docker-compose -f ./flyway/docker-compose-dev-flyway:info.yml -f ./flyway/docker-compose-dev-flyway:validate.yml -f ./flyway/docker-compose-dev-flyway:migrate.yml down

Stopping jukenook_admin ... done
Stopping jukenook_db    ... done
Removing jukenook_admin ... done
Removing jukenook_db    ... done
Removing network jukenook_net
Network jukenook_net is external, skipping
```

### Manage Database Migrations

For the following commands, the [Flyway] database versioning and migration tool is used.

#### Get Database Migrations Info

This command will return a list of migrations with relevant information like the migration state.

```text
$ npm run dev-db:info

> jukenook-db@1.0.0 dev-db:info /home/dmin/projects/jukenook/jukenook-db
> docker-compose -f ./flyway/docker-compose-dev-flyway:info.yml up

Creating jukenook_flyway ... done
Attaching to jukenook_flyway
Flyway Community Edition 6.4.4 by Redgate
Database: jdbc:postgresql://jukenook_db/jukenook (PostgreSQL 12.3)
Schema version: << Empty Schema >>
+------------+---------+------------------------------+------+--------------+---------+
| Category   | Version | Description                  | Type | Installed On | State   |
+------------+---------+------------------------------+------+--------------+---------+
| Versioned  | 1.1     | Create operations schema     | SQL  |              | Pending |
| Versioned  | 1.2     | Create employee table        | SQL  |              | Pending |
| Versioned  | 1.3     | Create catalog schema        | SQL  |              | Pending |
| Versioned  | 1.4     | Create genre table           | SQL  |              | Pending |
| Versioned  | 1.5     | Create artist table          | SQL  |              | Pending |
| Versioned  | 1.6     | Create album table           | SQL  |              | Pending |
| Versioned  | 1.7     | Create media type table      | SQL  |              | Pending |
| Versioned  | 1.8     | Create track table           | SQL  |              | Pending |
| Versioned  | 1.9     | Create playlist table        | SQL  |              | Pending |
| Versioned  | 1.10    | Create composition table     | SQL  |              | Pending |
| Versioned  | 1.11    | Create sales schema          | SQL  |              | Pending |
| Versioned  | 1.12    | Create customer table        | SQL  |              | Pending |
| Versioned  | 1.13    | Create invoice table         | SQL  |              | Pending |
| Versioned  | 1.14    | Create invoice line table    | SQL  |              | Pending |
| Repeatable |         | 001 Install extensions       | SQL  |              | Pending |
| Repeatable |         | 002 Insert genre data        | SQL  |              | Pending |
| Repeatable |         | 003 Insert media type data   | SQL  |              | Pending |
| Repeatable |         | 004 Insert artist data       | SQL  |              | Pending |
| Repeatable |         | 005 Insert album data        | SQL  |              | Pending |
| Repeatable |         | 006 Insert track data        | SQL  |              | Pending |
| Repeatable |         | 007 Insert employee data     | SQL  |              | Pending |
| Repeatable |         | 008 Insert customer data     | SQL  |              | Pending |
| Repeatable |         | 009 Insert invoice data      | SQL  |              | Pending |
| Repeatable |         | 010 Insert invoice line data | SQL  |              | Pending |
+------------+---------+------------------------------+------+--------------+---------+
```

#### Validate Database Migrations

This command will validate pending migrations and return information relating to the validity thereof.

```text
$ npm run dev-db:validate

> jukenook-db@1.0.0 dev-db:validate /home/dmin/projects/jukenook/jukenook-db
> docker-compose -f ./flyway/docker-compose-dev-flyway:validate.yml up

Recreating jukenook_flyway ... done
Attaching to jukenook_flyway
Flyway Community Edition 6.4.4 by Redgate
Database: jdbc:postgresql://jukenook_db/jukenook (PostgreSQL 12.3)
ERROR: Validate failed:
Detected resolved migration not applied to database: 1.1
Detected resolved migration not applied to database: 1.2
Detected resolved migration not applied to database: 1.3
Detected resolved migration not applied to database: 1.4
Detected resolved migration not applied to database: 1.5
Detected resolved migration not applied to database: 1.6
Detected resolved migration not applied to database: 1.7
Detected resolved migration not applied to database: 1.8
Detected resolved migration not applied to database: 1.9
Detected resolved migration not applied to database: 1.10
Detected resolved migration not applied to database: 1.11
Detected resolved migration not applied to database: 1.12
Detected resolved migration not applied to database: 1.13
Detected resolved migration not applied to database: 1.14
Detected resolved repeatable migration not applied to database: 001 Install extensions
Detected resolved repeatable migration not applied to database: 002 Insert genre data
Detected resolved repeatable migration not applied to database: 003 Insert media type data
Detected resolved repeatable migration not applied to database: 004 Insert artist data
Detected resolved repeatable migration not applied to database: 005 Insert album data
Detected resolved repeatable migration not applied to database: 006 Insert track data
Detected resolved repeatable migration not applied to database: 007 Insert employee data
Detected resolved repeatable migration not applied to database: 008 Insert customer data
Detected resolved repeatable migration not applied to database: 009 Insert invoice data
Detected resolved repeatable migration not applied to database: 010 Insert invoice line data
```

#### Run Database Migrations

This command will run the actual migrations on the database.

```text
$ npm run dev-db:migrate

> jukenook-db@1.0.0 dev-db:migrate /home/dmin/projects/jukenook/jukenook-db
> docker-compose -f ./flyway/docker-compose-dev-flyway:migrate.yml up

Recreating jukenook_flyway ... done
Attaching to jukenook_flyway
Flyway Community Edition 6.4.4 by Redgate
Database: jdbc:postgresql://jukenook_db/jukenook (PostgreSQL 12.3)
Successfully validated 24 migrations (execution time 00:00.264s)
Creating Schema History table "public"."flyway_schema_history" ...
Current version of schema "public": << Empty Schema >>
Migrating schema "public" to version 1.1 - Create operations schema
Migrating schema "public" to version 1.2 - Create employee table
Migrating schema "public" to version 1.3 - Create catalog schema
Migrating schema "public" to version 1.4 - Create genre table
Migrating schema "public" to version 1.5 - Create artist table
Migrating schema "public" to version 1.6 - Create album table
Migrating schema "public" to version 1.7 - Create media type table
Migrating schema "public" to version 1.8 - Create track table
Migrating schema "public" to version 1.9 - Create playlist table
Migrating schema "public" to version 1.10 - Create composition table
Migrating schema "public" to version 1.11 - Create sales schema
Migrating schema "public" to version 1.12 - Create customer table
Migrating schema "public" to version 1.13 - Create invoice table
Migrating schema "public" to version 1.14 - Create invoice line table
Migrating schema "public" with repeatable migration 001 Install extensions
Migrating schema "public" with repeatable migration 002 Insert genre data
Migrating schema "public" with repeatable migration 003 Insert media type data
Migrating schema "public" with repeatable migration 004 Insert artist data
Migrating schema "public" with repeatable migration 005 Insert album data
Migrating schema "public" with repeatable migration 006 Insert track data
Migrating schema "public" with repeatable migration 007 Insert employee data
Migrating schema "public" with repeatable migration 008 Insert customer data
Migrating schema "public" with repeatable migration 009 Insert invoice data
Migrating schema "public" with repeatable migration 010 Insert invoice line data
Successfully applied 24 migrations to schema "public" (execution time 00:02.983s)
```

### Connect Using pgAdmin

As part of the database setup and configuration in the _docker-compose_ file. The web based PosrgreSQL database management tool is also run within a container.

#### Step 1 - Open pgAdmin Tool

- Open browser and enter the address 'http://localhost:8080' to access _pgAdmin_
- For username, enter 'admin@example.com'
- For password, enter 'password'
- Logon

![1](https://user-images.githubusercontent.com/33935506/87851208-999a2380-c94a-11ea-89d5-2e05acba5d20.png)

- You should be logged in with the following view open

![2](https://user-images.githubusercontent.com/33935506/87851210-9a32ba00-c94a-11ea-9f1c-e578ce28c98c.png)

#### Step 2 - Create Server Group

- Create a server group called 'jukenook'

![3](https://user-images.githubusercontent.com/33935506/87851205-99018d00-c94a-11ea-8c10-48c3afbb9e25.png)

#### Step 3 - Create new server

- Create a server called 'jukenook-docker'
- Select the 'jukenook' server group

![4](https://user-images.githubusercontent.com/33935506/87851204-9868f680-c94a-11ea-8022-41e1ab92eb3a.png)

#### Step 4 - Provide Connection Details

- Select 'Connection' tab
- For host, because we are using docker to run pgAdmin, we need to obtain the IP Address of the Postgres docker container. Therefore, open up a terminal and type the following commands:
  
  ```docker
  docker container inspect -f '{{ .NetworkSettings.Networks.jukenook_net.IPAddress }}' jukenook_db

  -- Result
  172.18.0.2 (you may recieve a different IP Address)
  ```

- Enter the connection details
  - Host - see above to obtain IPAddress
  - Username - specified in docker-compose.yml file
  - Password - specified in docker-compose.yml file
  - Port - leave as the default 5432
  - Role - enter 'admin'. The admin role is created as part of database initialization script _'create-jukenook-db (defined in entrypoint-scripts folder)'_.
- Select 'Save' connection

![5](https://user-images.githubusercontent.com/33935506/87851203-9868f680-c94a-11ea-9421-24d5027a9f84.png)

- After saving connection, you should see a view similar to the following:

![6](https://user-images.githubusercontent.com/33935506/87851209-999a2380-c94a-11ea-84ac-011cf20be56f.png)

![7](https://user-images.githubusercontent.com/33935506/87851206-99018d00-c94a-11ea-974e-c3662a3f64bd.png)

#### Step 5 - Execute a Query

- Create a new query window by selecting the 'Query Tool' button.
- Enter a query and execute

![8](https://user-images.githubusercontent.com/33935506/87851202-969f3300-c94a-11ea-9250-a1b56424950b.png)

---

## Entrypoint Scripts

You may be wondering where I create the database and configure users and roles. I make use of entrypoint scripts to perform onceoff database initialization. For example, I currently have a single entrypoint script called _'create-jukenook-db'_ that looks as follows:

```bash
#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "postgres" --dbname "postgres" <<-EOSQL
    -- create database
    CREATE DATABASE jukenook;

    -- restrict public access
    REVOKE CREATE ON SCHEMA public FROM PUBLIC;
    REVOKE ALL ON DATABASE jukenook FROM PUBLIC;

    -- create admin role
    CREATE ROLE admin;
    GRANT ALL PRIVILEGES ON DATABASE jukenook TO admin;
    
    -- create readonly role
    CREATE ROLE readonly;
    GRANT CONNECT ON DATABASE jukenook TO readonly;

    -- create readwrite role
    CREATE ROLE readwrite;
    GRANT CONNECT ON DATABASE jukenook TO readwrite;

    -- create admin users
    CREATE USER jukenookboss WITH PASSWORD 'password';
    GRANT admin TO jukenookboss;

    -- create reader user
    CREATE USER reader WITH PASSWORD 'password';
    GRANT readonly TO reader;

    -- create writer user
    CREATE USER writer WITH PASSWORD 'password';
    GRANT readwrite TO writer;
EOSQL
```

The entrypoint scripts can be found in the _'entrypoint-scripts'_ folder as follows:

![entrypoint-scripts](https://user-images.githubusercontent.com/33935506/88454529-75978e80-cec4-11ea-9d7f-66eeb16e0ce5.png)

There is also an entry added to the volumes section of the Postgres service in the `docker-compose.yml` file:

```yml
version: '3.5'
services:
  jukenook_db:
    .
    .
    .
    volumes:
      - ./entrypoint-scripts:/docker-entrypoint-initdb.d/
    .
    .
    .
```

---

## Schema

The database schema is composed of 4 schemas:

- music_catalog (yellow)
- sales (green)
- operations (cyan)
- public (orange)

![Jukenook ERD](https://user-images.githubusercontent.com/33935506/88453517-bb038e00-cebb-11ea-9b22-bdc302d0ed94.png)

---

## Versioning

I use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/drminnaar/chinook-db/tags).

---

## Authors

- **Douglas Minnaar** - *Initial work* - [drminnaar](https://github.com/drminnaar)

---

[Chinook Database Project]: https://github.com/cwoodruff/ChinookDatabase
[Chinook]: https://github.com/cwoodruff/ChinookDatabase
[Chris Woodruff]: https://github.com/cwoodruff
[Flyway]: https://flywaydb.org/
[Getting Started Guide]: https://github.com/drminnaar/flyway
[Postgres]: https://www.postgresql.org
[PostgreSQL]: https://www.postgresql.org
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
