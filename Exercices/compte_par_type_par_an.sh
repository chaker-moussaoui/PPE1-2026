TYPE=$1
for AN in 2016 2017 2018
do
echo "Annotations en $AN :"
bash compte_par_type.sh $AN $TYPE
done
