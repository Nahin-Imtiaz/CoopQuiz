for file in `ls *.txt`
do
   mv $file new_$file
done

for file in `ls *.bak`
do
   rm $file
done

for file in `ls *.py`
do
   countLine=`cat $file | wc -l` 
   if [ $countLine -ge 10  ]
   then
      mv $file long_$file
   else
      mv $file short_$file
   fi
done
