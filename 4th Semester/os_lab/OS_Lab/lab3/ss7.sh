for i in $*
do 
	if who | grep -s $i > /dev/null
	then
		echo $i is logged in.
	else
		echo $i not available.
	fi
done 
