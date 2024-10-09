#!/bin/bash

# Script d'installation de GParted

if [[ $EUID -ne 0 ]]; then
    echo "Ce script doit être exécuté avec les privilèges super-utilisateur (sudo)."
    exit 1
fi

echo "Installation de GParted..."
sudo apt update && sudo apt install -y gparted

if command -v gparted &> /dev/null; then
    echo "GParted a été installé avec succès!"
else
    echo "L'installation de GParted a échoué."
fi
