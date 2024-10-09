#!/bin/bash

# Mettre à jour les paquets
sudo apt update

# Installer Rust si ce n'est pas déjà fait
if ! command -v cargo &> /dev/null
then
    echo "Rust n'est pas installé. Installation de Rust..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    source $HOME/.cargo/env
fi

# Installer Zellij
cargo install --locked zellij

# Vérifier l'installation
if command -v zellij &> /dev/null
then
    echo "Zellij a été installé avec succès!"
    zellij --version
else
    echo "L'installation de Zellij a échoué."
fi
