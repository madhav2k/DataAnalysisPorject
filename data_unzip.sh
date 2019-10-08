for month in `seq -w 1 12`; do
   unzip 2018$month.zip
   mv *ONTIME.csv 2018$month.csv
   rm 2018$month.zip
done
