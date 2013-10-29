#!/bin/bash

# need to add work with params

#sqlite3 webbase.db "select * from avellaneda" | awk -F "|" {'print "[\47"$2", "$3"<br><a href=\42pic/"$2"_b.jpg\42 target=\42_blank\42><img src=\42pic/"$2"_s.jpg\42 /></a><br>Author: "$4"\47, "$5", "$6", "$1"]," '}



if [ $# -eq 5 ]; then
	sqlite3 webbase.db "insert into avellaneda (city,country,author,lat,lon) values ('$2','$3','$4','$5','$6');"
else 
	echo "you need to add proper args with place coordinates"
	echo "databaser.sh -a Moscow Russia Gena 46.65 141.86";
fi
