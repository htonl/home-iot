#!/bin/bash

echo '                                     /$$     /$$' > output.html
echo '                                    | $$    | $$' >> output.html
echo ' /$$  /$$  /$$  /$$$$$$   /$$$$$$  /$$$$$$  | $$$$$$$   /$$$$$$   /$$$$$$' >> output.html
echo '| $$ | $$ | $$ /$$__  $$ |____  $$|_  $$_/  | $$__  $$ /$$__  $$ /$$__  $$' >> output.html
echo '| $$ | $$ | $$| $$$$$$$$  /$$$$$$$  | $$    | $$  \ $$| $$$$$$$$| $$  \__/' >> output.html
echo '| $$ | $$ | $$| $$_____/ /$$__  $$  | $$ /$$| $$  | $$| $$_____/| $$' >> output.html
echo '|  $$$$$/$$$$/|  $$$$$$$|  $$$$$$$  |  $$$$/| $$  | $$|  $$$$$$$| $$' >> output.html
echo ' \_____/\___/  \_______/ \_______/   \___/  |__/  |__/ \_______/|__/' >> output.html
printf "\n" >> output.html

curl -s wttr.in/minneapolis >> output.html
head -n -2 output.html > noutput.html
echo ' /$$$$$$$   /$$$$$$  /$$  /$$  /$$  /$$$$$$$' >> noutput.html
echo '| $$__  $$ /$$__  $$| $$ | $$ | $$ /$$_____/' >> noutput.html
echo '| $$  \ $$| $$$$$$$$| $$ | $$ | $$|  $$$$$$' >> noutput.html
echo '| $$  | $$| $$_____/| $$ | $$ | $$ \____  $$' >> noutput.html
echo '| $$  | $$|  $$$$$$$|  $$$$$/$$$$/ /$$$$$$$' >> noutput.html
echo '|__/  |__/ \_______/ \_____/\___/ |_______/' >> noutput.html
printf "\n" >> noutput.html
printf "\n" >> noutput.html

curl -s http://feeds.bbci.co.uk/news/rss.xml | grep "<title>" | sed "s/ <title><\!\[CDATA\[//g;s/\]\]><\/title>//;" | grep -v "BBC News" >> news.txt

declare -a newsarray

readarray newsarray < news.txt

while true; do

i = 0
while (( ${#newsarray[@]} > i )); do   
    echo ${newsarray[i++]} >> noutput.html
    printf "\n" >> noutput.html
    echo ${newsarray[i++]} >> noutput.html
    printf "\n" >> noutput.html
    echo ${newsarray[i++]} >> noutput.html
    printf "\n" >> noutput.html
    echo ${newsarray[i++]} >> noutput.html
    printf "\n" >> noutput.html
    clear
    cat noutput.html
    sleep 10
    head -n -8 noutput.html > temp.html
    cat temp.html > noutput.html
done

done
