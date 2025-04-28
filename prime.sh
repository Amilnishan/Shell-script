if [ $# -ne 1 ];
then
	echo "Syntax is <$0> <no1>"
	exit 1
else
	if [ $1 -lt 2 ];
	then
		echo "NOT Prime"
		exit 1
	fi
	i=2
	while [ $i -le `expr $1 / 2` ];
	do
		if [ `expr $1 % $i` -eq 0 ];
		then
			echo "$1 is not a prime number" 
			exit 0
		fi
		i=`expr $i + 1`
	done
	echo "$1 is a prime number"
fi
