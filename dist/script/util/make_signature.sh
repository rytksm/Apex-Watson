#! /bin/sh
# $1 input_file
# $2 result_file

date >> ~/speech-to-text/log.txt
script=$(dirname $0)/make_signature.py
echo $script >> ~/speech-to-text/log.txt
secret=`cat ~/.speech-to-text/user_secret`
echo $secret >> ~/speech-to-text/log.txt
signature=`python $script $secret $1`
echo $signature >> ~/speech-to-text/log.txt

echo signature=$signature > $2
echo section=end >> $2


