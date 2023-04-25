#!/bin/bash

if [[ "$1" == "--date" ]]; then
    echo "Dzisiaj jest $(date +%Y-%m-%d)"
elif [[ "$1" == "--logs" ]]; then
    if [[ "$2" =~ ^[0-9]+$ ]]; then
        for i in $(seq 1 "$2"); do
            filename="log${i}.txt"
            echo "Nazwa pliku: $filename" >> "$filename"
            echo "Nazwa skryptu: $0" >> "$filename"
            echo "Data utworzenia: $(date)" >> "$filename"
        done
    else
        echo "Nieprawidłowy argument wywołania"
    fi
else
    echo "Nieprawidłowe argumenty wywołania."
fi