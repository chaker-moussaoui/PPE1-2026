ANNEE=$1
MOIS=$2
NBR=$3
if [[ $ANNEE != "*" && $MOIS != "*" ]]
then
cat ../../exercice1/ann/$ANNEE/$MOIS/* | grep "Location" | cut -f 3 | sort -r | uniq -c | sort -n | tail -n$NBR

elif [[ $ANNEE == "*" && $MOIS == "*" ]]
then
cat ../../exercice1/ann/{2016,2017,2018}/{01,02,03,04,05,06,07,08,09,10,11,12}/* | grep "Location" | cut -f 3 | sort -r | uniq -c | sort -n | tail -n$NBR

elif [[ $ANNEE != "*" && $MOIS == "*" ]]
then
cat ../../exercice1/ann/$ANNEE/{01,02,03,04,05,06,07,08,09,10,11,12}/* | grep "Location" | cut -f 3 | sort -r | uniq -c | sort -n | tail -n$NBR

else
cat ../../exercice1/ann/{2016,2017,2018}/$MOIS/* | grep "Location" | cut -f 3 | sort -r | uniq -c | sort -n | tail -n$NBR
fi
