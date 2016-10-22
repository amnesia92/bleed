. ./config.sh
echo "Creating missing dirs..."
mkdir data in logs

#The following was made a bit quickly, maybe there's a better way of doing it
echo "Creating missing files ..."
echo "" >> $BLEED_TARGETS_FILE
echo "" >> $BLEED_SOURCE_FILE
echo "" >> $BLEED_ASCII_FILE
echo "" >> $BLEED_RAW_FILE
echo "" >> $BLEED_VERBOSE_FILE

#giving permissions
echo "Giving permissions to scripts ..."
chmod +x $BLEED_BACKGROUND_SCRIPT $BLEED_SCREEN_SCRIPT $BLEED_ADD_TARGETS_SCRIPT