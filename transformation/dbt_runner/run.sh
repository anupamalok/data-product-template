#!/bin/bash
set -e

DBT_PROJECT_DIR=$1

dbt deps --project-dir "$DBT_PROJECT_DIR"
dbt run --project-dir "$DBT_PROJECT_DIR" --profiles-dir "$DBT_PROFILES_DIR"
dbt test --project-dir "$DBT_PROJECT_DIR" --profiles-dir "$DBT_PROFILES_DIR"
