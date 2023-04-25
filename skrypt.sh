#!/bin/bash

if [[ "$1" == "--date" ]]; then
    echo "Dzisiaj jest $(date +%Y-%m-%d)"
elif [[ "$1" == "--logs" ]]; then
    for i in {1..100}; do
        filename="log${i}.txt"
        echo "Nazwa pliku: $filename" >> "$filename"
        echo "Nazwa skryptu: $0" >> "$filename"
        echo "Data utworzenia: $(date)" >> "$filename"
    done
else
    echo "Nieprawidłowe argumenty wywołania."
fi