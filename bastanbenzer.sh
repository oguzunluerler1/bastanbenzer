#!/bin/bash

var1=$1; #var1 n sayımız
var2=$2; #var2 dene1
var3=$3; #var3 dene2

var4=$(wc -l <$2); #dene1 satır sayısı
var5=$(wc -l <$3); #dene2 satır s

if [[ $var4 -lt $var1 ]] || [[ $var5 -lt $var1 ]]
then
	echo farkli;
	exit 0;
fi

if [[ $(head -$var1 $var2) != $(head -$var1 $var3) ]]
then
	echo "farkli"; 
else
	echo "ayni";
fi
