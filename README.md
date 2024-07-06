# Greenlight

This project is what I develop throughout the book Let's Go Further by Alex Edwards. It is a Movie CRUD (Create, Read, Update, Delete) application with authentication functionality, using Postgres as the database and developed in Go.

## Table of Contents

- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
  - [Building the Application](#building-the-application)
  - [Running the Application](#running-the-application)
  - [Database Operations](#database-operations)
  - [Quality Control](#quality-control)
- [Makefile Commands](#makefile-commands)

## Requirements

- Go (version 1.16 or higher)
- Postgres
- `migrate` tool for database migrations
- `psql` for interacting with the Postgres database
- `staticcheck` for static code analysis

## Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/tjapa/greenlight.git
   cd movie-crud
   ```

2. Set up environment variables:
   Create a `.envrc` file with the following content (adjust as needed for your setup):
   ```sh
   export GREENLIGHT_DB_DSN="postgres://username:password@localhost/dbname?sslmode=disable"
   ```

3. Install dependencies:
   ```sh
   make vendor
   ```

## Usage

### Building the Application

To build the application, run:
```sh
make build/api
```
This will generate the binary in the `./bin/api` directory.

### Running the Application

To run the application, use:
```sh
make run/api
```

### Database Operations

To connect to the database using `psql`, run:
```sh
make db/psql
```

To create a new database migration, use:
```sh
make db/migrations/new name=your_migration_name
```

To apply all up database migrations, run:
```sh
make db/migrations/up
```

### Quality Control

To tidy and vendor dependencies, format, vet, and test all code, use:
```sh
make audit
```

## Makefile Commands

- `make help`: Print this help message
- `make confirm`: Confirm action
- `make build/api`: Build the cmd/api application
- `make run/api`: Run the cmd/api application
- `make db/psql`: Connect to the database using psql
- `make db/migrations/new name=your_migration_name`: Create a new database migration
- `make db/migrations/up`: Apply all up database migrations
- `make audit`: Tidy and vendor dependencies, format, vet, and test all code
- `make vendor`: Tidy and verify module dependencies, and vendor dependencies
