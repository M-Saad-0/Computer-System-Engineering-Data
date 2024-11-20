echo Enter the directory: 
read dir
cd
echo No of sub directories in $dir are: 
ls -l "./$dir" | grep "^d" | wc -l

