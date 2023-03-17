export PGUSER=iousco

dropdb yoladesign
echo "BDD yoladesign supprimée"
createdb yoladesign -O iousco
echo "BDD yoladesign créée"

rm sqitch.conf
rm sqitch.plan

sqitch init yoladesign --target db:pg:yoladesign
echo "Sqitch initialisé"

sqitch add init -n "création des tables"