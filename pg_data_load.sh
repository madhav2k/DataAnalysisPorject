#!/bin/sh

THE_USER=sarma
THE_DB="sarma"
THE_SCHEMA="public"
THE_TABLE="flight_analysis_real"
# PSQL=/opt/postgresql/bin/psql
SOURCE_DIR="/Users/sarma/Per/code/data/US_Airline_Data/orig_data_files/*.csv"
THE_DIR="/Users/sarma/Per/code/data/US_Airline_Data"


for file in $SOURCE_DIR
do
   echo "processing '$file'"

   # commentig next line because we dont have to remove header
   #awk '{if (NR!=1) {print}}' 201503.csv > test_mod_temp.csv

   # cleanse the file by inserting quites for strings
   awk -f data_enclose_awk.awk $file  > test_mod_temp.csv
   
   # cope the file data to the table
   psql -U ${THE_USER} ${THE_DB} -c "COPY ${THE_SCHEMA}.${THE_TABLE} FROM '${THE_DIR}/test_mod_temp.csv' delimiter ',' csv header";
done

#cleaning up
echo "cleaning up temp files"
rm test_mod_temp.csv
