#!/bin/bash

# Script d'installation de Synaptic

if [[ $EUID -ne 0 ]]; then
    echo "Ce script doit être exécuté avec les privilèges super-utilisateur (sudo)."
    exit 1
fi

echo "Installation de Synaptic..."
sudo apt update && sudo apt install -y synaptic

if command -v synaptic &> /dev/null; then
    echo "Synaptic a été installé avec succès!"
else
    echo "L'installation de Synaptic a échoué."
fi
