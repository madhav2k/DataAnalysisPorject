select airline_id, origin_airport_id, origin, dest, dest_airport_id, crs_dep_time, fl_date, fl_num, count(*) parallel_flights from flight_analysis_real  
 where extract(year from fl_date) in  ('2017','2018')  group by fl_date, crs_dep_time, airline_id, origin_airport_id, fl_num, dest_airport_id,origin, dest having count(*) > 1;


