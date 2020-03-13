#! /bin/sh
# $1 reference_signature
# $2 input_file
# $3 result_file

date >> ~/speech-to-text/log.txt
script=$(dirname $0)/make_signature.py
echo $script >> ~/speech-to-text/log.txt
secret=`cat ~/.speech-to-text/user_secret`
echo $secret >> ~/speech-to-text/log.txt
signature=`python $script $secret $2`
echo $signature >> ~/speech-to-text/log.txt
echo $1 >> ~/speech-to-text/log.txt

if [ "$signature" = "$1" ] ; then
	result=true
else
	result=false
fi
echo signature_check_result=$result > $3
echo section=end >> $3


