echo What is the Capital of Saudi Arabia \?
read answer
while test $answer != Riyadh
do 
	echo No, Wrong please try again.
	read answer
done
echo This is correct.
