. ./config.sh
export numberIP=$(wc -l < $BLEED_TARGET_LIST)
echo "Now : $numberIP ips in $BLEED_TARGET_LIST"
echo "Parsing file ..."
grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" $BLEED_SOURCE_FILE | uniq >> tmp.txt
cat targets.txt >> tmp.txt
cat tmp.txt | uniq > $BLEED_TARGET_LIST
rm tmp.txt
export newNumberIP=$(wc -l < $BLEED_TARGET_LIST)
export added=$(($newNumberIP-$numberIP))
echo "Now : $newNumberIP ips ! ($added added)"
