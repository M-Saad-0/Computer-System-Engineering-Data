echo "1. Date and time"
echo
echo "2. Directory listing"
echo
echo "3. Users information"
echo
echo "4. Current Directory"
echo
echo "Enter choice (1,2,3 or 4 ) :\c"
read choice
case $choice in
	1)	date;;
	2)	ls -l;;
	3)	who ;;
	4)	pwd ;;
	*)	echo wrong choice;;
esac
