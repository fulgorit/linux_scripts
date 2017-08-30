if ping -c 1 192.168.1.60 &> /dev/null
then
        mount /mnt/wdlivehub
else
  echo "error"
fi

