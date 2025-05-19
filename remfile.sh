#remove identical files

if [ $# -ne 2 ]
then
	echo "syntax is $0, <file1><file2>"
	exit 1
fi

f1="$1"
f2="$2"
if cmp -s "$f1" "$f2"
then
	echo "removing file $f1"
	rm "$f1"
else
	echo "files are not identical"
fi
exit 0
