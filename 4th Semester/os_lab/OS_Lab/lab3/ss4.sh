a=10
b=20
if [ $a == $b ]
then
   echo "a is equal to b $a=$b"
elif [ $a -gt $b ]
then
   echo "a is greater than b $a>$b"
elif [ $a -lt $b ]
then
   echo "a is less than b $a<$b"
else
   echo "None of the conditions are met"
fi

