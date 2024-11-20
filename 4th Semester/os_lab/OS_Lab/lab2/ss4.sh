cd
echo Enter source file location and filename:
read src
echo Enter the target location:
read trgt
echo Move or Copy?
read mvORcp
$mvORcp $src $trgt
