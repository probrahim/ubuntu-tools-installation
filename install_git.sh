#!/bin/bash

# Script d'installation de Git

if [[ $EUID -ne 0 ]]; then
    echo "Ce script doit être exécuté avec les privilèges super-utilisateur (sudo)."
    exit 1
fi

echo "Installation de Git..."
sudo apt update && sudo apt install -y git

if command -v git &> /dev/null; then
    echo "Git a été installé avec succès!"
else
    echo "L'installation de Git a échoué."
fi
