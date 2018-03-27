#!/bin/bash

OUTPUT='output.txt'
echo "" > $OUTPUT

while read LINE 
do 
  result=`atos -arch arm64 -o YandexDisk -l $LINE`
  #if success
  if [ $? -eq 0 ] 
  then
  	 echo $LINE $result >> $OUTPUT
  else
  	 echo $LINE >> $OUTPUT
  fi
done < "$1"