#Change values in this file like you want

#log
echo "Importing data from ./config.sh , please edit this file to set your own config."

#DATA
export BLEED_TARGET_FILE="data/targets.txt"

#IN
export BLEED_SOURCE_FILE="in/source.html"

#LOGS
export BLEED_VERBOSE_FILE="logs/verbose.txt"
export BLEED_RAW_FILE="logs/raw_logs.txt"
export BLEED_ASCII_LOGS="logs/ascii_logs.txt"

#CONFIG FOR ATTACK
export BLEED_COOLDOWN=5
export BLEED_ITERATIONS=5 #how many times will it try ? this goes to -n parameter of Heartbleed.py