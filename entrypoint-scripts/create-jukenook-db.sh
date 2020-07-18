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