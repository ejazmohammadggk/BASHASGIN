if ! pidof apache2 > /dev/null
then
    /etc/init.d/apache2 restart > /dev/null
    if pidof apache2 > /dev/null
    then
        echo "server started"
    else
       apt-get update
       apt-get install apache2
    fi
fi
