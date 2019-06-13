#!/bin/sh
IFS=$'\n'

for line in $(cat lives.csv)
do
    vid=$(echo $line | cut -d, -f 1)
    youtube-dl --sub-lang it --write-auto-sub --skip-download --output "%(upload_date)s_%(id)s.vtt" ${vid///}
done
