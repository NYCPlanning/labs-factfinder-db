# labs-factfinder-db
Scripts for populating the population factfinder database

## Overview

This repo contains `SQL` and bash scripts for creating, importing, and populating the NYC population factfinder postgresql database.  The database is created using [dokku-postgres](https://github.com/dokku/dokku-postgres), allowing for easy linking to the [factfinder-api](https://github.com/nycplanning/labs-factfinder-api) dokku app.

## dokku-postgres

Create a clean postgres database called `factfinder` using `dokku-postgres`

`postgres:create factfinder`

## Files to Import

Load these into `/data` before running the import scripts.  

An easy way to get these files from your local machine to the server is to use `scp`:

`scp {localfile} {user}@{server}:{pathToRemoteFile}`

* `decennial.zip` & `acs.zip` - csv files that are output from the [factfinder-acs-munge](https://github.com/NYCPlanning/labs-factfinder-acs-munge) R script.
* `decennial_dictionary.csv` - metadata for decennial queries.
* `factfinder_metadata.csv` - metadata for acs queries.

## Scripts

`create_tables.sql` - Creates new postgresql tables: `decennial`, `demographic`, `social`, `housing`, `economic`, `factfinder_metadata`, `decennial_dictionary`

This sql script can be executed using the `dokku-postgres` `connect` command, which runs the sql inside the running postgres container.

`dokku postgres:connect factfinder < create_tables.sql`

### psql scripts

The remaining scripts make use of psql, which runs on the host machine but connects to the dokku postgresql instance.  In order to connect, two environment variables must be set:

`$PGPASSWORD` - the password that `dokku-postgres` created for the database.
`$PGIPADDRESS` - the local IP address of the postgresql container.

Find these by running `dokku postgres:info factfinder`, and set them in the local environment.

`import.sh` - imports the decennial and acs CSVs.  

`import_metadata.sh` - imports the two metadata tables;

`create_indices.sh` - adds btree indices to the decennial table and each of the 4 acs tables.

