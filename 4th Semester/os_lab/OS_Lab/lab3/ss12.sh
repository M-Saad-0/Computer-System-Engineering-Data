echo Enter the first number: 
read n1
echo Enter the second number: 
read n2
echo  Enter the third number:
read n3
if test $n1 -gt $n2
then
	if test $n1 -gt $n3
	then echo $n1 is the largest.
	else echo $n3 is the largest.
	fi
else
	if test $n2 -gt $n3
	then echo $n2 is the largest.
	else echo $n3 is the largest.
	fi
fi
