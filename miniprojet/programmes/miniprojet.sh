FICHIER="$1"

if (( "$#" != 1 ));
then
echo "cette commande requiert exactement 1 argument" >&2
exit
fi

echo -e "<html>\n<head>\n<meta charset=\"UTF-8\" />\n</head>\n<body>\n<table>" > "../tableaux/tableau-fr.html"
echo -e "<tr>\n<th>numéro</th>\n<th>lien</th>\n<th>réponse</th>\n<th>encodage</th>\n<th>mots</th>\n</tr>" >> "../tableaux/tableau-fr.html"

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

echo "<tr>" >> "../tableaux/tableau-fr.html"
for ELEMENT in $NBR_LIGNE ${line} $REPONSE_SERV $ENCODAGE $NBR_MOTS
do
echo "<td>$ELEMENT</td> " >> "../tableaux/tableau-fr.html"
done

echo "</tr>" >> "../tableaux/tableau-fr.html"

done < "$FICHIER"

echo -e "</table>\n</body>\n</html>" >> "../tableaux/tableau-fr.html"
