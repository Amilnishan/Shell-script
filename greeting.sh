#program to display greetings
hour=`date +%H`
if [ $hour -ge 5 -a $hour -le 12 ]
then
	echo "good morning"
elif [ $hour -ge 12 -a $hour -le 15 ]
then
	echo "good afternoon"
elif [ $hour -ge 15 -a $hour -le 19 ]
then
	echo "good evening"
else
	echo "good night"
fi  
