#!/bin/bash

COUNT=0
HEADLINE_COUNT=0
I=0
J=0

while true; do
    if [ $COUNT == 2 ] 
        then
            curl -s wttr.in/minneapolis > weather.html
    fi
    head -n -2 weather.html

    if [ $COUNT == 2 ] 
        then
            curl -s http://feeds.bbci.co.uk/news/rss.xml | grep "<title>" | sed "s/<title><\!\[CDATA\[//g;s/\]\]><\/title>//;" | grep -v "BBC News" > news.html
            COUNT=0
            HEADLINE_COUNT="$(wc -l news.html| cut -d " " -f 1)"
            echo "${HEADLINE_COUNT}"
    fi
    
    echo "nnnn  nnnnnnnn        eeeeeeeeeeee  wwwwwww           wwwww           wwwwwww  ssssssssss          "
    echo "n:::nn::::::::nn    ee::::::::::::ee w:::::w         w:::::w         w:::::w ss::::::::::s   ::::::"
    echo "n::::::::::::::nn  e::::::eeeee:::::eew:::::w       w:::::::w       w:::::wss:::::::::::::s  ::::::"
    echo "nn:::::::::::::::ne::::::e     e:::::e w:::::w     w:::::::::w     w:::::w s::::::ssss:::::s ::::::"
    echo "  n:::::nnnn:::::ne:::::::eeeee::::::e  w:::::w   w:::::w:::::w   w:::::w   s:::::s  ssssss        "
    echo "  n::::n    n::::ne:::::::::::::::::e    w:::::w w:::::w w:::::w w:::::w      s::::::s             "
    echo "  n::::n    n::::ne::::::eeeeeeeeeee      w:::::w:::::w   w:::::w:::::w          s::::::s          "
    echo "  n::::n    n::::ne:::::::e                w:::::::::w     w:::::::::w     ssssss   s:::::s  ::::::"
    echo "  n::::n    n::::ne::::::::e                w:::::::w       w:::::::w      s:::::ssss::::::s ::::::"
    echo "  n::::n    n::::n e::::::::eeeeeeee         w:::::w         w:::::w       s::::::::::::::s  ::::::"
    echo "  n::::n    n::::n  ee:::::::::::::e          w:::w           w:::w         s:::::::::::ss         "
    echo "  nnnnnn    nnnnnn    eeeeeeeeeeeeee           www             www           sssssssssss           "
    echo ""
    echo ""

    sleep 10
    clear
    ((COUNT+=1))
done
