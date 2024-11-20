echo "Please Enter the user login name: \c"
read login_name
until who | grep $login_name
do
   sleep 30
   read login_name
done 
echo The user $login_name has logged in
