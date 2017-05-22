#!/bin/bash
if [$1 = '']; then
        sudo -u postgres psql -d application -c "SELECT id as num, nicename as name, iso3 as iso, numcode, phonecode FROM country;"
else
        sudo -u postgres psql -d application -c "SELECT id as num, nicename as name, iso3 as iso, numcode, phonecode FROM country WHERE iso3='$1';"
fi

