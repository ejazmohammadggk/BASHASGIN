pid=$(pid apache23);
echo $pid;
if [ $pid -gt 0 ]; then
 echo "Process is running."
else
 echo "Process is not running."
fi
