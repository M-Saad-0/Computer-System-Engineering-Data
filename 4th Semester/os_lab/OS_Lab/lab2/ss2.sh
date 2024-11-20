echo Do you want to create a folder? ctrl+c to close
read Dir
cd
cd Desktop/OS_Lab
mkdir $Dir
echo $Dir folder has been created.
echo What file do you want create?
read File
touch $File
echo $File has been created.
ls

