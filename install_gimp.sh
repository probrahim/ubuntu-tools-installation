#!/bin/bash

# Script d'installation de GIMP

if [[ $EUID -ne 0 ]]; then
    echo "Ce script doit être exécuté avec les privilèges super-utilisateur (sudo)."
    exit 1
fi

echo "Installation de GIMP..."
sudo apt update && sudo apt install -y gimp

if command -v gimp &> /dev/null; then
    echo "GIMP a été installé avec succès!"
else
    echo "L'installation de GIMP a échoué."
fi
