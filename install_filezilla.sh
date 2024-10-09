#!/bin/bash

# Script d'installation de FileZilla

if [[ $EUID -ne 0 ]]; then
    echo "Ce script doit être exécuté avec les privilèges super-utilisateur (sudo)."
    exit 1
fi

echo "Installation de FileZilla..."
sudo apt update && sudo apt install -y filezilla

if command -v filezilla &> /dev/null; then
    echo "FileZilla a été installé avec succès!"
else
    echo "L'installation de FileZilla a échoué."
fi
