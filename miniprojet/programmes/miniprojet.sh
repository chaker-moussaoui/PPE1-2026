FICHIER="$1"

if (( "$#" != 1 ));
then
echo "cette commande requiert exactement 1 argument" >&2
exit
fi

NBR_LIGNE=0
while read -r line;
do
NBR_LIGNE=$(expr $NBR_LIGNE + 1)
CONTENU=$(curl -si ${line})
REPONSE_SERV=$(echo $CONTENU | grep -oP "HTTP/[0-9].?[0-9]? \K[0-9]+")
ENCODAGE=$(echo $CONTENU | grep -oP "; charset=\K.[a-zA-Z\-0-9]+")
if [ -z $ENCODAGE ];
then
ENCODAGE="inconnu"
fi
NBR_MOTS=$(lynx -dump -nolist ${line} | wc -w) 
echo -e "$NBR_LIGNE\t${line}\t$REPONSE_SERV\t$ENCODAGE\t$NBR_MOTS" >> "../tableaux/tableau-fr.tsv";
done < "$FICHIER"
