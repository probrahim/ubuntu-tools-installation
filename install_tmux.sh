#!/bin/bash

# Installer Tmux
sudo apt update
sudo apt install -y tmux

# Vérifier l'installation
if command -v tmux &> /dev/null
then
    echo "Tmux a été installé avec succès!"
    tmux -V
else
    echo "L'installation de Tmux a échoué."
fi
