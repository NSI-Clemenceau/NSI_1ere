#!/bin/bash

score=0
max=34


# Tests de présence de dossiers
verification_dossiers() {
    if [ ! -d "$1" ]
    then
        echo "Le dossier $1 est manquant !"
        return
    fi
    score=$((score+1))
    false
}

verification_fichiers() {
    if [ ! -f "$1" ]
    then
        echo "Le fichier $1 est manquant !"
        return
    fi
    score=$((score+1))
    false
}

verification_droits() {
    (ls -l "$1")> .sortieLS.tmp
    read droits reste < .sortieLS.tmp
    if [ ! $droits = "$2" ]
    then
        echo "Les permissions sur "$1" devraient être "$2", or elles sont $droits"
        return
    fi
    score=$((score+1))
    false
}

verification_user() {
    (ls -l "$1")> .sortieLS.tmp
    read tmp1 tmp2 user group reste < .sortieLS.tmp
    if [ ! $user = "$2" ]
    then
        echo "Le propriétaire du fichier "$1" devrait être "$2", or c'est $user"
        return
    fi
    score=$((score+1))
    false
}

verification_group() {
    (ls -l "$1")> .sortieLS.tmp
    read tmp1 tmp2 user group reste < .sortieLS.tmp
    if [ ! $group = "$2" ]
    then
        echo "Le groupe du fichier "$1" devrait être "$2", or c'est $group"
        return
    fi
    score=$((score+1))
    false
}

#
verification_dossiers LAC
if ! (exit $?)
then
    nom_fichier=LAC/GOUTTES.txt
    verification_fichiers $nom_fichier
    droits_corrects="-r-xr-xr-x"
    verification_droits "$nom_fichier" $droits_corrects
    user_correct="hpotter"
    verification_user "$nom_fichier" $user_correct
    group_correct="eleves"
    verification_group "$nom_fichier" $group_correct
fi

#
verification_dossiers FORET
if ! (exit $?)
then
    nom_fichier=FORET/GUI.txt
    verification_fichiers $nom_fichier
    droits_corrects="-rwxr-xr-x"
    verification_droits "$nom_fichier" $droits_corrects
    user_correct="hpotter"
    verification_user "$nom_fichier" $user_correct
    group_correct="eleves"
    verification_group "$nom_fichier" $group_correct
fi

#
verification_dossiers SERRES
if ! (exit $?)
then
    nom_fichier=SERRES/VALERIANE.txt
    verification_fichiers $nom_fichier
    droits_corrects="-rwx--x--x"
    verification_droits "$nom_fichier" $droits_corrects
    user_correct="hpotter"
    verification_user "$nom_fichier" $user_correct
    group_correct="eleves"
    verification_group "$nom_fichier" $group_correct
fi

#
verification_dossiers CUISINES/CHEMINEE
if ! (exit $?)
then
    nom_fichier=CUISINES/CHEMINEE/CHAUDRON.txt
    verification_fichiers $nom_fichier
    droits_corrects="-rwxr-xr-x"
    verification_droits "$nom_fichier" $droits_corrects
    user_correct="hpotter"
    verification_user "$nom_fichier" $user_correct
    group_correct="eleves"
    verification_group "$nom_fichier" $group_correct

fi

#
verification_dossiers POTIONS
if ! (exit $?)
then
    nom_fichier=POTIONS/PILON.txt
    verification_fichiers $nom_fichier
    droits_corrects="-rwx--xr-x"
    verification_droits "$nom_fichier" $droits_corrects
    user_correct="hpotter"
    verification_user "$nom_fichier" $user_correct
    group_correct="eleves"
    verification_group "$nom_fichier" $group_correct
    nom_fichier=POTIONS/MORTIER.txt
    verification_fichiers $nom_fichier
    droits_corrects="-rwx--xr-x"
    verification_droits "$nom_fichier" $droits_corrects
    user_correct="hpotter"
    verification_user "$nom_fichier" $user_correct
    group_correct="eleves"
    verification_group "$nom_fichier" $group_correct

fi

#
verification_dossiers DUMBLEDORE/TIROIR
if ! (exit $?)
then
    nom_fichier=DUMBLEDORE/TIROIR/OEUF.txt
    verification_fichiers $nom_fichier
    droits_corrects="-rwxr-x---"
    verification_droits "$nom_fichier" $droits_corrects
    user_correct="dumbledore"
    verification_user "$nom_fichier" $user_correct
    group_correct="enseignants"
    verification_group "$nom_fichier" $group_correct
fi


# Message de succès... ou non !

echo "Vous avez complété $(( score*100/max ))% du jeu"

if [[ $score -eq 34 ]]
then
    echo "Bravo, vous avez réussi votre première potion ! Le jeu est fini."
else
    echo "Il vous reste à corriger votre arborescence pour retenter une validation de votre protocole !"
fi

