

#!/bin/bash

echo "Hola"
echo "¿Cual es tu usuario de GitHub?"

read GITHUB_USER

OUTPUT="$(curl -s https://api.github.com/users/$GITHUB_USER)"

USER=$(echo "$OUTPUT" | grep -w '"login"' | awk '{print $2}' | sed 's/'\"'//g' | sed 's/'\,'//g')
NID=$(echo "$OUTPUT" | grep -w '"id"' | awk '{print $2}' | sed 's/'\,'//g')
CREATE=$(echo "$OUTPUT" | grep -w '"created_at"' | awk '{print $2}' | sed 's/'\"'//g' | sed 's/'\,'//g')

echo ""
echo "Hola $GITHUB_USER. User ID: $NID. Cuenta fue creada el: $CREATE."

DIA=`date +"%d-%m-%Y"`

mkdir -p tmp/$DIA

echo "Hola $USER. User ID: $NID. Cuenta fue creada el: $CREATE." > tmp/$DIA/saludos.log

exit