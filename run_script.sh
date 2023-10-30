#!/bin/bash
dbt deps &> /usr/app/dbt/log.txt
dbt run-operation stage_external_sources &>> /usr/app/dbt/log.txt
dbt run &>> /usr/app/dbt/log.txt
echo "Successfully Finished" &>> /usr/app/dbt/log.txt
