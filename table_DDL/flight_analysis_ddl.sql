-- Table: public.flight_analysis, 

DROP TABLE public.flight_analysis;
 
CREATE TABLE public.flight_analysis
(
FL_DATE	                date, 
UNIQUE_CARRIER	        text, 
AIRLINE_ID	            text, 
CARRIER	                text, 
FL_NUM	                text, 
ORIGIN_AIRPORT_ID	    text, 
ORIGIN_AIRPORT_SEQ_ID	text, 
ORIGIN_CITY_MARKET_ID	text, 
ORIGIN	                text, 
DEST_AIRPORT_ID	        text, 
DEST_AIRPORT_SEQ_ID	    text, 
DEST_CITY_MARKET_ID	    text, 
DEST	                text, 
CRS_DEP_TIME	        text, 
DEP_TIME	            text, 
DEP_DELAY	            text, 
TAXI_OUT	            text, 
WHEELS_OFF	            text, 
WHEELS_ON	            text, 
TAXI_IN	                text, 
CRS_ARR_TIME	        text, 
ARR_TIME	            text, 
ARR_DELAY	            text, 
CANCELLED	            text, 
CANCELLATION_CODE	    text, 
DIVERTED	            text, 
DISTANCE	            text
) 
WITH ( 
  OIDS=FALSE
);
ALTER TABLE public.flight_analysis
  OWNER TO sarma;