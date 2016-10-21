export numberIP=$(wc -l < targets.txt)
echo "Actuellement : $numberIP ips dans targets.txt"
echo "Parse du code source ..."
grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" source.html | uniq >> tmp.txt
cat targets.txt >> tmp.txt
cat tmp.txt | uniq > targets.txt
rm tmp.txt
export newNumberIP=$(wc -l < targets.txt)
export added=$(($newNumberIP-$numberIP))
echo "Maintenant : $newNumberIP ips ! ($added ajoutées)"
