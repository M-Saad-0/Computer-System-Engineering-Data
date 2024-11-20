check=$1
if [ -f "./$check" ];
then echo "It is a File"

elif [ -d "./$check" ];
then echo "It is a Directory"

elif [ -s "./$check" ];
then echo "It is a Link."

else echo "Not Found."
fi
