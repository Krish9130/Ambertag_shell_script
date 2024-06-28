read -p "name of file:" file

if [ -f $file ]
then
	echo "file exit."
else 
	echo "file doesn't exit"
fi
