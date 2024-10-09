#!/bin/bash

# Télécharger le binaire pour Micro
wget https://getmic.ro -O - | bash

# Déplacer le binaire dans un répertoire inclus dans votre PATH
sudo mv micro /usr/local/bin/

# Vérifier l'installation
if command -v micro &> /dev/null
then
    echo "Micro a été installé avec succès!"
    micro --version
else
    echo "L'installation de Micro a échoué."
fi
