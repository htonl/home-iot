#!/bin/bash

curl wttr.in/minneapolis > output.html
clear
cat output.html

sleep 30

clear

curl -s http://feeds.bbci.co.uk/news/rss.xml | grep "<title>" | sed "s/ <title><\!\[CDATA\[//g;s/\]\]><\/title>//;" | grep -v "BBC News"

sleep 30

clear
