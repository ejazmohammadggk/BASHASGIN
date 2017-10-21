pid=$(pid apache2);
if [ $pid -gt 0 ]; then
 echo "Process is running."
else
 echo "Process is not running."
fi
