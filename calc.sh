#program to perform calculation

if [ $# -ne 3 ]
then
	echo "syntax is $0 <n1> [operator] <n3>"
else
case $2 in
+) echo sum= `expr $1 + $3`;;
-) echo sum= `expr $1 - $3`;;
x|X) echo sum= `expr $1 \* $3`;;
%) echo sum= `expr $1 % $3`;;
/) echo sum= `expr $1 / $3`;;
*) echo "Invalid operator"
esac
fi 
