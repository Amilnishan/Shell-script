#program to reverse the lines in a file
if [ $# -ne 1 ]
then
	echo "syntax is <$0> [file name]"
else
	set -xv
	cp $1 file
	l=`cat file | wc -l` 
	rm -f rfile
	while [ $l -ge 1 ]
	do
		tail -n 1 file >> rfile
		l=`expr $l - 1`
		head -n $l file > temp
		mv temp file
	done
fi
