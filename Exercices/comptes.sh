for ANNEE in 2016 2017 2018
do
echo "Annotations en $ANNEE :"
cat ../../exercice1/ann/$ANNEE/{01,02,03,04,05,06,07,08,09,10,11,12}/* | wc -l
done
