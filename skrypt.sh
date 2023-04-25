#!/bin/bash

if [[ "$1" == "--date" ]]; then
    echo "Dzisiaj jest $(date +%Y-%m-%d)"
else
    echo "Nieprawidłowe argumenty wywołania."
    echo "Użycie: skrypt.sh --date"
fi