-- Table: public.flight_analysis_real, 

DROP TABLE public.flight_analysis_real;
 
CREATE TABLE public.flight_analysis_real
(
FL_DATE	                 date,
UNIQUE_CARRIER	         text,
AIRLINE_ID	             numeric,
CARRIER	                 text,
FL_NUM	                 numeric,
ORIGIN_AIRPORT_ID	     numeric,
ORIGIN_AIRPORT_SEQ_ID	 numeric,
ORIGIN_CITY_MARKET_ID	 numeric,
ORIGIN	                 text,
DEST_AIRPORT_ID	         numeric,
DEST_AIRPORT_SEQ_ID	     numeric,
DEST_CITY_MARKET_ID	     numeric,
DEST	                 text,
CRS_DEP_TIME	         text,
DEP_TIME	             text,
DEP_DELAY	             decimal,
TAXI_OUT	             decimal,
WHEELS_OFF	             text,
WHEELS_ON	             text,
TAXI_IN	                 decimal,
CRS_ARR_TIME	         text,
ARR_TIME	             text,
ARR_DELAY	             decimal,
CANCELLED	             decimal,
CANCELLATION_CODE	     text,
DIVERTED	             decimal,
DISTANCE	             decimal,

PRIMARY KEY (FL_Date, AIRLINE_ID, ORIGIN_AIRPORT_ID, DEST_AIRPORT_ID, CRS_DEP_TIME, FL_NUM)
) 
WITH ( 
  OIDS=FALSE
);

ALTER TABLE public.flight_analysis_real
  OWNER TO sarma;