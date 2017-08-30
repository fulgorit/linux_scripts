grep pdf list.txt | while read -r line ; do
    foo=$(pdfinfo $line 2>/dev/null | grep Pages | awk '{print $2}')
#   echo "$foo: $line"
    re='^[0-9]+$'
    if  [[ $foo =~ $re ]] ; then
        echo "$foo: $line"
    fi
done

#./count_pages.sh | sort -n
