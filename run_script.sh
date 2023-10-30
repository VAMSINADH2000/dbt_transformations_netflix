
# !/bin/bash
dbt deps
dbt run-operation stage_external_sources
dbt run
dbt run -m movies_transformations
echo "Successfully Finished"