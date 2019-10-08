--Table data details
--/Users/sarma/Per/code/data/US_Airline_Data/L_UNIQUE_CARRIERS.csv
--COPY public.airline_master FROM STDIN (FORMAT 'text', DELIMITER '|')

create table airline_master 
(airline_code text , airline_name text);

