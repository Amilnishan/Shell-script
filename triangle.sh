#to check triangle

if [ $# -ne 3 ]
then
	echo "syntax is <$0> <n1> <n2> <n3>"
	exit 1
fi
	a=$1
	b=$2
	c=$3

	a1=$a
	b1=$b
	c1=$c

	if [ $a -gt $b ]
	then
		max=$a
		a=$b
		b=$max
	fi
	if [ $b -gt $c ]
	then
		max=$b
		b=$c
		c=$max
	fi
	if [ `expr $a + $b` -gt $c ]
	then
		echo "Triangle can be formed"
	else
		echo "Triangle cannot be formed"
		exit 1
	fi
	if [ $a1 -eq $b1 -a $b -eq $c ]
	then 
		echo "Equilateral Triangle"
	elif [ $a1 -eq $b1 -o $b1 -eq $c1 -o $c1 -eq $a1 ]
	then
		echo "Isoceles Triangle"
	elif [ `expr $a \* $a + $b \* $b` -eq `expr $c \* $c` ]
	then
		echo "Right angled Triangle"
	else 
		echo "Normal Triangle"
	fi

