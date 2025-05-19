#program to print directory name,date&time,size

echo "Directory of $(pwd)"
ls -lnA --time-style='+%m/%d/%Y %I:%M %p' | tail -n +2 | while read -r perm links owner group size date time filename
do
	firstchar=$(echo "$perm" | cut -c1)
	if [ "$firstchar" = "d" ]
	then
		echo "$date $time     <DIR>     $filename"
	elif [ "$frstchar" = "-" ]
	then
		echo "$date $time               $size $filename"
	fi
done
