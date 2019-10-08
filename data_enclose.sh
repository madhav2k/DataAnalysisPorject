FILES="/Users/sarma/Per/code/data/US_Airline_Data/*.csv"
for file in $FILES 
do
  echo "processing $file"
  ### Removing header 
  ##sed '1d' $file 
  ### prepend with a single quote 
  sed -i'.original' -e "s/^/'/" $file
  sed -i'.original' -e "s/,/','/g" $file
  sed -i'.original' -e "s/.00/.00'/g" $file
  sed -i'.original' -e "s/.00''/.00'/g" $file
done
