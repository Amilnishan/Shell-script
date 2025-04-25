#max of 3 numbers

if [ $# -ne 3 ]
then
	echo "syntax is <$0> <no1> <no2> <no3>"
	exit 1
else
	n1=$1
	n2=$2
	n3=$3
	if [ $n1 -gt $n2 -a $n1 -gt $n3 ]
	then
		echo "number 1 ($n1) is greater"
	elif [ $n2 -gt $n1 -a $n2 -gt $n3 ]
	then
		echo "number 2 ($n2) is greater"
	else
	
		echo "number 3 ($n3) is greater"
	fi
fi 
