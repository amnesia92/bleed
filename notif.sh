. ./config.sh
clear
while :
do
grep Basic $BLEED_VERBOSE_FILE | uniq #can also use sort -u instead of uniq, but it sorts the output
sleep 5
clear
done
