#!/bin/bash
response=$(curl -s https://economia.awesomeapi.com.br/json/last/EUR-BRL)

eur_bid=$(echo "$response" | jq -r '.EURBRL.bid')
eur_pct=$(echo "$response" | jq -r '.EURBRL.pctChange')

formatted_bid=$(printf "%.2f" "$eur_bid")
formatted_pct=$(printf "%.2f" "$eur_pct")

echo " eur: $formatted_bid"
echo "pct: $formatted_pct%"