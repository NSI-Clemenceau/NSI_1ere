#!/bin/bash

# Tests de présence de dossiers

verification_dossiers() {
    if [ ! -d "$1" ]
    then
        echo "Le dossier $1 est manquant !"
    fi
}


verification_dossiers LAC
verification_dossiers FORET
verification_dossiers SERRES
verification_dossiers CUISINES/CHEMINEE
verification_dossiers POTIONS
verification_dossiers DUMBLEDORE/TIROIR

# Tests de présence de fichiers

verification_fichiers() {
    if [ ! -f "$1" ]
    then
        echo "Le fichier $1 est manquant !"
    fi
}

verification_fichiers LAC/GOUTTES.txt
verification_fichiers FORET/GUI.txt
verification_fichiers SERRES/VALERIANE.txt
verification_fichiers CUISINES/CHEMINEE/CHAUDRON.txt
verification_fichiers POTIONS/PILON.txt
verification_fichiers POTIONS/MORTIER.txt
verification_fichiers DUMBLEDORE/TIROIR/OEUF.txt

# Tests sur les droits des fichiers uniquement

verification_droits() {
    (ls -l "$1")> .sortieLS.tmp
    read droits reste < .sortieLS.tmp
    if [ ! $droits = "$2" ]
    then
        echo "Les permissions sur "$1" devraient être "$2", or elles sont $droits"
    fi
}

nom_fichier=LAC/GOUTTES.txt
droits_corrects="-r-xr-xr-x"
verification_droits "$nom_fichier" $droits_corrects

nom_fichier=FORET/GUI.txt
droits_corrects="-rwxr-xr-x"
verification_droits "$nom_fichier" $droits_corrects

nom_fichier=SERRES/VALERIANE.txt
droits_corrects="-rwx--x--x"
verification_droits "$nom_fichier" $droits_corrects

nom_fichier=CUISINES/CHEMINEE/CHAUDRON.txt
droits_corrects="-rwxr-xr-x"
# Attention à bien mettre des guillemets pour passer les parametres à espaces
verification_droits "$nom_fichier" $droits_corrects

nom_fichier=POTIONS/PILON.txt
droits_corrects="-rwx--xr-x"
verification_droits "$nom_fichier" $droits_corrects

nom_fichier=POTIONS/MORTIER.txt
droits_corrects="-rwx--xr-x"
verification_droits "$nom_fichier" $droits_corrects

nom_fichier=DUMBLEDORE/TIROIR/OEUF.txt
droits_corrects="-rwxr-x---"
verification_droits "$nom_fichier" $droits_corrects

# Tests sur le proprietaire des fichiers uniquement

verification_user() {
    (ls -l "$1")> .sortieLS.tmp
    read tmp1 tmp2 user group reste < .sortieLS.tmp
    if [ ! $user = "$2" ]
    then
        echo "Le propriétaire du fichier "$1" devrait être "$2", or c'est $user"
    fi
}

nom_fichier=DUMBLEDORE/TIROIR/OEUF.txt
user_correct="dumbledore"
verification_user "$nom_fichier" $user_correct

nom_fichier=LAC/GOUTTES.txt
user_correct="hpotter"
verification_user "$nom_fichier" $user_correct

nom_fichier=FORET/GUI.txt
user_correct="hpotter"
verification_user "$nom_fichier" $user_correct

nom_fichier=SERRES/VALERIANE.txt
user_correct="hpotter"
verification_user "$nom_fichier" $user_correct

nom_fichier=CUISINES/CHEMINEE/CHAUDRON.txt
user_correct="hpotter"
verification_user "$nom_fichier" $user_correct

nom_fichier=POTIONS/PILON.txt
user_correct="hpotter"
verification_user "$nom_fichier" $user_correct

nom_fichier=POTIONS/MORTIER.txt
user_correct="hpotter"
verification_user "$nom_fichier" $user_correct


# Tests sur le groupe des fichiers uniquement

verification_group() {
    (ls -l "$1")> .sortieLS.tmp
    read tmp1 tmp2 user group reste < .sortieLS.tmp
    if [ ! $group = "$2" ]
    then
        echo "Le groupe du fichier "$1" devrait être "$2", or c'est $group"
    fi
}

nom_fichier=DUMBLEDORE/TIROIR/OEUF.txt
group_correct="enseignants"
verification_group "$nom_fichier" $group_correct

nom_fichier=LAC/GOUTTES.txt
group_correct="eleves"
verification_group "$nom_fichier" $group_correct

nom_fichier=FORET/GUI.txt
group_correct="eleves"
verification_group "$nom_fichier" $group_correct

nom_fichier=SERRES/VALERIANE.txt
group_correct="eleves"
verification_group "$nom_fichier" $group_correct

nom_fichier=CUISINES/CHEMINEE/CHAUDRON.txt
group_correct="eleves"
verification_group "$nom_fichier" $group_correct

nom_fichier=POTIONS/PILON.txt
group_correct="eleves"
verification_group "$nom_fichier" $group_correct

nom_fichier=POTIONS/MORTIER.txt
group_correct="eleves"
verification_group "$nom_fichier" $group_correct

# Message de succès... ou non !

echo "Si vous n'avez aucun message d'erreur au dessus de ce message : Bravo, vous avez réussi votre première potion !"
echo "Sinon... il vous reste à corriger votre arborescence pour retenter une validation de votre protocole"