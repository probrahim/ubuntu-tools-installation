#!/bin/bash

# Script d'installation de BleachBit

if [[ $EUID -ne 0 ]]; then
    echo "Ce script doit être exécuté avec les privilèges super-utilisateur (sudo)."
    exit 1
fi

echo "Installation de BleachBit..."
sudo apt update && sudo apt install -y bleachbit

if command -v bleachbit &> /dev/null; then
    echo "BleachBit a été installé avec succès!"
else
    echo "L'installation de BleachBit a échoué."
fi
