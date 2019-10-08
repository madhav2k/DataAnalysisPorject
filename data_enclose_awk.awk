#!/usr/bin/awk -f

BEGIN { FS=OFS=","}

{
    for (i = 1; i <= NF; ++i)
      if (i == 1 || i == 2 || i == 4 || i == 9 || i == 13 ||i == 14 || i == 15 || i == 18 || i == 19 || i == 21 || i == 22 )        
      {       
        $i = "'" $i "'"
      }
#      else if(i == 2)
#      {
#        $i = "'" $i "'"
#      }
#      else if(i == 4){
#       $i = "'" $i "'"
#      }
#      else if(i == 9){
#       $i = "'" $i "'"
#      }
#      else if(i == 13){
#       $i = "'" $i "'"
#      }
       print
}
