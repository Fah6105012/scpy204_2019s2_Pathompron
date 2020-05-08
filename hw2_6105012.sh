#!/bin/bash
File="covid_19.txt"
FS=$','

echo -e "count: dateRep,day,month,year,cases,deaths,countriesAndTerritories,geoId,countryterritoryCode,popData2018"
while read line
do
	        echo -e "$line"
	done < $File
	n=1
	echo -e "count: dateRep,day,month,year,cases,deaths,countriesAndTerritories,geoId,countryterritoryCode,popData2018"
	while read line
	do
		        for word in $line
				        do
						        if [ $word == "Thailand" ]
								        then
										        echo -e "$n: $line"
											        n=$((n+1))
												        fi
													        done
													done < $File
													gawk -F, '$7 == "Thailand" {s+=$5}END{print "cases in Thailand=",s}' covid_19.txt
													gawk -F, '$7 == "Thailand" {s+=$5}END{print "cases/population=",s*100/69428524"%"}' covid_19.txt
													gawk -F, '$7 == "Thailand" {r+=$5; t+=$6} END{print "deaths/cases=",t*100/r"%"}' covid_19.txt
