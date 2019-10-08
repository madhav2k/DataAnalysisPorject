#!/bin/sh
  
THE_USER=sarma
THE_DB="sarma"
THE_SCHEMA="public"
THE_TABLE="flight_analysis_real"
# PSQL=/opt/postgresql/bin/psql
SOURCE_DIR=/Users/sarma/Per/code/data/US_Airline_Data/orig_data_files
THE_DIR=/Users/sarma/Per/code/data/US_Airline_Data
THE_FILE=201502.csv
   # cleanse the file by inserting quites for strings
   awk -f data_enclose_awk.awk $THE_FILE  > test_mod_temp.csv

   # copy the file data to the table
   psql -U ${THE_USER} ${THE_DB} -c "COPY ${THE_SCHEMA}.${THE_TABLE} FROM '${THE_DIR}/test_mod_temp.csv' delimiter ',' csv header";
