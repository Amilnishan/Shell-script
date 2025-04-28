#program to count number of words and lines in files
if [ $# -lt 1 -o $# -gt 1 ]
then
	echo "syntax is <$0> [ file name ]"
	exit 1
fi
flag=0
if [ $# -eq 1 ]
then
	term='one'
	exec < $1
	flag=1
fi

line_count=0
word_count=0

while read line
do 
	line_count=$((line_count + 1))
	set -- $line
	word_count=$((word_count + $#))
done

echo "Number of lines = $line_count"
echo "Number of words = $word_count"

if [ $flag -eq 1 ]
then
	exec < $term
fi

