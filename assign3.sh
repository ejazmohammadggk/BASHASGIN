pid apache23
echo "$?"
if [ $? -eq 0 ]; then
 echo "Process is running."
else
 echo "Process is not running."
fi
