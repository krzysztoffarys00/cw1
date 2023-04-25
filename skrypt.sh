#!/bin/bash

if [[ "$1" == "--date" || "$1" == "-d" ]]; then
    echo "Dzisiaj jest $(date +%Y-%m-%d)"
elif [[ "$1" == "--logs" || "$1" == "-l" ]]; then
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
elif [[ "$1" == "--help" || "$1" == "-h" ]]; then
    echo "Użycie: skrypt.sh --date|--logs [N]"
    echo "--date: Wyświetla dzisiejszą datę w formacie YYYY-MM-DD."
    echo "--logs [N]: Tworzy N plików logu o nazwie logx.txt (dla x od 1 do N) z wpisem o nazwie, nazwie skryptu i dacie utworzenia."
elif [[ "$1" == "--init"]]; then
    url="https://github.com/krzysztoffarys00/cw1"	
    git clone $url
    export PATH="$PATH:$(pwd)"
else
    echo "Nieprawidłowe argumenty wywołania."
fi