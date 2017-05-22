
#!/bin/bash
 
INPUT=country-codes.csv
IFS=','
PGPASSWORD=support
table='country'
cols='"iso", "name", "nicename", "iso3", "numcode", "phonecode"'
DBNAME='application'

export PGPASSWORD
 
while read ISO3166_1_Alpha_2 name official_name_en ISO3166_1_Alpha_3 M49 Dial
do
  iso=$ISO3166_1_Alpha_2
  name=$name
  nicename=$official_name_en
  iso3=$ISO3166_1_Alpha_3
  numcode=$M49
  phonecode=$Dial
  export iso2 name nicename iso3 numcode phonecode 
 
#
  INSERTSQL="insert into $table ($cols) VALUES('$iso','$name','$nicename','$iso3','$numcode','$phonecode');"
  echo $INSERTSQL
  psql -p 5432 -U support --set ON_ERROR_STOP=on -c "${INSERTSQL}" $DBNAME
done < $INPUT
 
 
IFS=$OLDIF
