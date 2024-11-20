echo *Type \'Search\' for searching files and \'User\' for listing all the users
read fromUser
if [ $fromUser == "Search" ];
then
	echo "In which directory: " && read dir 
    cd 
    echo What do you want to search:
    read srch
    echo "Here is the result for $srch ."
    ls "./$dir" | grep "$srch"
elif [ $fromUser == "User" ];
then
   echo "Ther  users that are logged in : $USER "
fi
