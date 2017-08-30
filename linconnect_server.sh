if pgrep -f "linconnect_server.py" > /dev/null
then
    echo "linconnect_server.py is running"
else
    echo "Starting linconnect_server.py"
    python ~/scripts/linconnect_server.py
fi

#pgrep -f "linconnect_server.py"




