#!/bin/bash
set -e

test -f product/contract.yml || (echo "Missing contract.yml" && exit 1)
test -d product/dbt || (echo "Missing dbt directory" && exit 1)
