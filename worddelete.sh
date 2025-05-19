# Program to delete a word from a file

if [ $# -ne 2 ]; then
    echo "Syntax is: $0 <file1> <word to delete>"
    exit 1
fi

file=$1
word=$2

if [ ! -f "$file" ]; then
    echo "Error: File '$file' does not exist."
    exit 1
fi

# Check if the word exists (whole word match)
if grep -qw "\b$word\b" "$file"; then
    sed -i "s/\b$word\b//g" "$file"
    echo "Word '$word' was removed from '$file'."
else
    echo "Word '$word' not found in '$file'. No changes made."
fi

exit 0

