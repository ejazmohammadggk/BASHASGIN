if [ "$#" -eq 2 -a -d "$1" ];
then
	if [ -d "$1" ];then
		echo ‘error’
fi
    	if [ -d "$2" ];then
            	cp -r "$1"/* "$2"
    	else
            	mkdir "$2"
            	cp -r "$1"/* "$2"
    	fi
fi
