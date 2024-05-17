#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE DATABASE greenlight;
  CREATE ROLE greenlight WITH LOGIN PASSWORD 'pa55word';
	GRANT ALL PRIVILEGES ON DATABASE greenlight TO greenlight;
  CREATE EXTENSION IF NOT EXISTS citext;
EOSQL
