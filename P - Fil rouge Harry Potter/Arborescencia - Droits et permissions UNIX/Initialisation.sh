#!/bin/bash

# Linux avec adumbledore comme super-utilisateur
# Créer un dossier /home/NSI en chmod 775 (chown adumbledore:poudlard)
# Copier Initialisation.sh, Validation.sh et dossier Serres dans NSI
# >>> sudo sh Initialisation.sh
# Saisir les pwd utilisateur tels qu'ils sont notés dans "codes Poudlard.md"
# Sinon...
# Utiliser la copie de VM VirtualBox déjà prête

# Droit initiaux des dossiers à 775

mkdir -p Poudlard/Laboratoire
mkdir -p Poudlard/Foret
mkdir -p Poudlard/Lac
mkdir -p Poudlard/Serres
mkdir -p Poudlard/Cuisines/"Placard bas"
mkdir -p Poudlard/Cuisines/"Placard haut"
mkdir -p Poudlard/Cuisines/"Cheminée"
mkdir -p Poudlard/Cuisines/"Evier"
mkdir -p Poudlard/Cuisines/"Bord de fenêtre"
mkdir -p Poudlard/Cuisines/"Poubelle"
mkdir -p Poudlard/"Grande salle"
mkdir -p Poudlard/"Bureau de Rusard"
mkdir -p Poudlard/Bibliothèque
mkdir -p Poudlard/Toilettes
mkdir -p Poudlard/"Infirmerie"
mkdir -p Poudlard/"Chambre des secrets"
mkdir -p Poudlard/Volière
mkdir -p Poudlard/Cachots
mkdir -p Poudlard/"Salle des trophées"
mkdir -p Poudlard/"Salle de bain des préfets"
mkdir -p Poudlard/"Salle commune Gryffondor"
mkdir -p Poudlard/"Salle commune Serpentard"
mkdir -p Poudlard/"Salle commune Serdaigle"
mkdir -p Poudlard/"Salle commune Poufsouffle"
mkdir -p Poudlard/"Salle sur demande"
mkdir -p Poudlard/"Salle des potions"
mkdir -p Poudlard/"Bureau de Lockhart"
mkdir -p Poudlard/"Bureau de McGonagall"
mkdir -p Poudlard/"Bureau de Chourave"
mkdir -p Poudlard/"Bureau de Quirell"
mkdir -p Poudlard/"Bureau de Flitwick"
mkdir -p Poudlard/"Bureau de Rogue/Tiroir du bureau"
mkdir -p Poudlard/"Bureau de Rogue/Etagère du haut"
mkdir -p Poudlard/"Bureau de Rogue/Etagère du bas"
mkdir -p Poudlard/"Bureau de Rogue/Malle fermée"
mkdir -p Poudlard/"Bureau de Dumbledore/Tiroir du bureau"
mkdir -p Poudlard/"Bureau de Dumbledore/Joli meuble"
mkdir -p Poudlard/"Bureau de Dumbledore/Perchoir"
mkdir -p Poudlard/"Bureau de Dumbledore/Etagères"
mkdir -p Poudlard/"Bureau de Dumbledore/Etagères/Tiroir caché"

# Droit initiaux des fichiers à 664
# POUDLARD (Consignes initiales)
mon_texte="Bonjour Harry,\nPour réussir ton passage en seconde année,\n
tu dois réunir les ingrédients nécessaires à la potion 'Arborescencia'.\n\n
Un premier ingrédient est à chercher au bord du lac"
(echo $mon_texte)>Poudlard/README.md

# LAC
mon_texte="Il faut recueillir 2 gouttes d'eau du fleuve Léthé"
(echo $mon_texte)>Poudlard/Lac/README.md
mon_texte="Bravo, tu as trouvé le premier ingrédient !\n\n
Il faut noter précieusement les informations suivantes :\n
Dossier : LAC\n
Fichier : GOUTTES.txt\n
Droits : 555\n\n
L'ingrédient suivant est à cueillir dans la forêt"
(echo $mon_texte)>Poudlard/Lac/GOUTTES.txt

# FORET
mon_texte="Il faut cueillir l'INGREDIENT1 (graines de gui)"
(echo $mon_texte)>Poudlard/Foret/README.md
mon_texte="Tout se passe pour le mieux, tu as trouvé !\n
Voici les informations utiles (à noter !) à la préparation de la potion :\n
Dossier : FORET\n
Fichier : GUI.txt\n
Droits : A vous de déterminer les droits pour...\n
           donner tous les droits au propriétaire\n
           mais pas de droit d'écriture aux groupes (seulement lecture et execution)\n\n
Il faut maintenant aller dans les serres de Poudlard, tu y trouveras certainement un ingrédient utile."
(echo $mon_texte)>Poudlard/Foret/INGREDIENT1.txt
mon_texte=".........................Ce n'est pas le bon ingrédient.............................."
(echo $mon_texte)>Poudlard/Foret/INGREDIENT2.txt
(echo $mon_texte)>Poudlard/Foret/INGREDIENT3.txt
(echo $mon_texte)>Poudlard/Foret/INGREDIENT4.txt
(echo $mon_texte)>Poudlard/Foret/INGREDIENT5.txt
(echo $mon_texte)>Poudlard/Foret/INGREDIENT6.txt
(echo $mon_texte)>Poudlard/Foret/INGREDIENT7.txt
(echo $mon_texte)>Poudlard/Foret/INGREDIENT8.txt
(echo $mon_texte)>Poudlard/Foret/INGREDIENT9.txt
mon_texte="login : dobby\npwd : ch@ussette"
(echo $mon_texte)>Poudlard/Foret/TISSUS_ELFIQUE.txt

# SERRES
mon_texte="Il faut prendre l'INGREDIENT5 (grains de valériane)\n\n
Ce fichier est executable par le logiciel Libre Office Writer\n
On peut lancer ce logiciel en ligne de commande ainsi :\n
        lowriter nom_de_fichier.odt\n\n
Attention :\n
    - pour retrouver l'usage du terminal, il faudra d'abord fermer la fenêtre de writer\n
    - le fichier est protégé par un mot de passe !\n
    \n
Ce mot de passe est unique et il faut respecter parfaitement sa casse (Maj/Min)\n
Ce mot de passe est l'exacte commande UNIX pour AJOUTER\n
les droits d'écriture au propriétaire sur le fichier INGREDIENT5.odt\n
(uniquement les droits d'écriture, uniquement pour le propriétaire)\n
On admetra également que cette commande est saisie par un super-utilisateur\n
(le sudo sera donc inutile ici)\n
Lire https://doc.ubuntu-fr.org/permissions\n\n
Remarque : on ne demande pas de changer les droits du fichier, mais uniquement\n
de connaitre la commande qui permet de changer ces droits"
(echo $mon_texte)>Poudlard/Serres/README.md

# CUISINES
mon_texte="Se diriger vers la cheminée\n
Mais, si tu as un moment, il serait aussi utile de fouiller le reste des cuisines..."
(echo $mon_texte)>Poudlard/Cuisines/README.md
mon_texte="Prendre le chaudron"
(echo $mon_texte)>Poudlard/Cuisines/Cheminée/README.md
mon_texte="Bien ! Vous avez trouvé un élément essentiel pour préparer des potions !\n
Ses caractéristiques diffèrent un peu des précédents ingrédients car, cette fois-ci,\n
le fichier à créer devra être présent dans un sous dossier.\n
Dossier : CUISINES/CHEMINEE\nFichier : CHAUDRON.txt\nDroits : rwxr-xr-x\n\n
Voici venu le moment de s'introduire dans le bureau de Rogue (avec un compte enseignants)"
(echo $mon_texte)>Poudlard/Cuisines/Cheminée/CHAUDRON.txt
mon_texte=".........................Ce n'est pas le bon ingrédient.............................."
(echo $mon_texte)>Poudlard/Cuisines/Cheminée/BUCHE.txt
(echo $mon_texte)>Poudlard/Cuisines/Cheminée/TISONNIER.txt
(echo $mon_texte)>Poudlard/Cuisines/Cheminée/BRAISE.txt
mon_texte="login : glockhart\npwd : gilderoy"
(echo $mon_texte)>Poudlard/Cuisines/"Placard bas/BOUT_DE_PAPIER_QUI_TRAINE.txt"

#ROGUE
mon_texte="Fouiller dans le tiroir du bureau...\n
encore faut-il pouvoir l'ouvrir !"
(echo $mon_texte)>Poudlard/"Bureau de Rogue/README.md"
mon_texte="mdp : 1mNotTheBadGuy"
(echo $mon_texte)>Poudlard/"Bureau de Rogue/PENSE_BETE.md"
mon_texte="Se rendre dans la salle des potions...\n
...à condition d'avoir la recette de la potion 'Arborescencia' !"
(echo $mon_texte)>Poudlard/"Bureau de Rogue/Tiroir du bureau/README.md"
mon_texte="Pour préparer la potion, il faut d'abord réunir tous les ingrédients\n
il faudra ensuite aller au laboratoire, avec le compte de Harry\n
mais seulement en temps voulu !\n\n
La potion se prépare ainsi :\n\n
Chaque ingrédient trouvé doit se matérialiser par un fichier (à son nom),\n
placé dans un dossier (au nom du lieu où vous avez trouvé l'ingrédient).\n
Chacun de ces dossiers et fichiers doit posséder les droits demandés.\n
Ces noms et ces droits vous sont rappelés dans chaque fichier ingrédient.\n
Un script de validation vérifira si vous avez correctement préparé votre potion\n\n
ATTENTION : chaque détail compte. La moindre faute de frappe peut faire exploser votre potion !"
(echo $mon_texte)>Poudlard/"Bureau de Rogue/Tiroir du bureau/PARCHEMIN.txt"

# SALLE DES POTIONS
mon_texte="Trouvez-moi un pilon et un mortier pour écraser le gui et la valériane !"
(echo $mon_texte)>Poudlard/"Salle des potions/README.md"
mon_texte="Dossier : SALLE DES POTIONS\nFichier : MORTIER.txt\n
Droits : ceux du fichier DROITS.txt\n\n
Pour connaître ces droits, la commande ls sera utile (mais une option sera à ajouter)\n
Au besoin : https://doc.ubuntu-fr.org/tutoriel/console_commandes_de_base#ls\n\n
Lorsque vous aurez terminé dans cette pièce, il sera temps d'aller visiter le bureau de Dumbledore."
(echo $mon_texte)>Poudlard/"Salle des potions/MORTIER.txt"
mon_texte="Dossier : SALLE DES POTIONS\nFichier : PILON.txt\n
Droits : ceux du fichier DROITS.txt\n\n
Pour connaître ces droits, la commande ls sera utile (mais une option sera à ajouter)\n
Au besoin : https://doc.ubuntu-fr.org/tutoriel/console_commandes_de_base#ls\n\n
Lorsque vous aurez terminé dans cette pièce, il sera temps d'aller visiter le bureau de Dumbledore."
(echo $mon_texte)>Poudlard/"Salle des potions/PILON.txt"
mon_texte="Ce fichier servira en seconde étape, lors de la préparation de la potion\n\n
Pour connaître ses droits, la commande ls sera utile (mais une option sera à ajouter)\n
Au besoin : https://doc.ubuntu-fr.org/tutoriel/console_commandes_de_base#ls\n
De toutes façons, il y a très peu de chances que quelqu'un lise ce contenu,\n
vu les droits restreints en lecture... \n
Mais bon, qui sait ?"
(echo $mon_texte)>Poudlard/"Salle des potions/DROITS.txt"

# DUMBLEDORE
mon_texte="Le dernier ingrédient se trouve dans un tiroir caché.\n\n
Pour l'atteindre, il vous faut les droits de lecture.\n
Ce dossier 'Tiroir caché' est situé dans le dossier 'Etagères'\n
A vous de changer les droits de ce dossier, 755 par exemple\n
Le mot de passe du super utilisateur dumbledore vous sera nécessaire :\n
su_pwd : dr@c0Dormiens"
(echo $mon_texte)>Poudlard/"Bureau de Dumbledore/README.md"
mon_texte="Se saisir du dernier ingrédient dans ce tiroir\n\n
Se rendre ensuite au Laboratoire pour l'étape 2\n\n
Lire https://doc.ubuntu-fr.org/adduser\n\n
Cela vous sera utile pour ajouter harry au groupe des laborantins.\n
Sans cela, l'accès lui sera certainement refusé !\n\n
Une dernière chose : avez-vous bien lu le parchemin pour savoir\n
exactement ce que vous devrez faire dans le laboratoire ?\n
En cas de doute, une bonne relecture s'impose..."
(echo $mon_texte)>Poudlard/"Bureau de Dumbledore/Etagères/Tiroir caché/README.md"
mon_texte="Le dernier ingrédient est un oeuf de Serpencendre\n
Ses caractéristiques diffèrent un peu des précédents ingrédients car\n
il faudra également définir un propriétaire et un groupe\n
aux fichiers / dossiers crées :\n
Dossier : DUMBLEDORE/TIROIR\n
Fichier : OEUF.txt\n
Droits : tous les droits pour le propriétaire\n
         droit de lecture et d'exécution pour les enseignants\n
         aucun droit pour les autres groupes !\n
Propriétaire : dumbledore\n
Groupe : enseignants"
(echo $mon_texte)>Poudlard/"Bureau de Dumbledore/Etagères/Tiroir caché/INGREDIENT.txt"

# LABORATOIRE
mon_texte="Préparer votre potion ici, en vous aidant des instructions écrites sur le PARCHEMIN.txt\n\n
Lorsque votre arborescence sera parfaite :\n
- noms de dossiers corrects\n
- noms et emplacements de fichiers corrects\n
- droit corrects\n
- propriétaire (hpotter) et groupe (eleves) corrects\n
      (Attention : sauf si un autre propriétaire et/ou groupe vous a été demandé !)\n\n
Vous pourrez tester si votre préparation est un succès en executant le fichier Validation.sh\n
Cette execution doit s'effectuer dans le dossier du Laboratoire, avec la commande :\n
sh Validation.sh"
(echo $mon_texte)>Poudlard/Laboratoire/README.md

# chown ne fonctionne pas immédiatement. 
# il faut que les utilisateurs et groupes existent déjà
# Mais il faut un sudo pour utiliser adduser et addgroup -> impossible pour élèves
# Le mieux est de précédemment créer ces utilisateurs/groupes sur l'image de la VM
# Mais dans ce cas, autant créer toute l'arborescence, pas besoin de ce Initialisation.sh !
# Je garde toutefois ce fichier pour mieux visualiser les caractéristiques de l'arborescence

addgroup poudlard
addgroup eleves
addgroup enseignants
addgroup laborantins
addgroup elfes
adduser hpotter
adduser srogue
adduser dobby
adduser glockhart
adduser hpotter eleves
adduser srogue enseignants
adduser glockhart enseignants
adduser dobby elfes
addgroup adumbledore poudlard
addgroup hpotter poudlard
addgroup srogue poudlard
addgroup glockhart poudlard
addgroup dobby poudlard

mv Validation.sh Poudlard/Laboratoire
mv Serres/*.* Poudlard/Serres
rmdir Serres

chown -R adumbledore:poudlard Poudlard
chown -R srogue:enseignants Poudlard/"Bureau de Rogue"
chown -R adumbledore:enseignants Poudlard/"Bureau de Dumbledore"
chown -R adumbledore:enseignants Poudlard/"Salle des potions"
chown -R adumbledore:elfes Poudlard/Cuisines
chown -R adumbledore:laborantins Poudlard/Laboratoire

chmod -R 755 Poudlard
chmod -R 771 Poudlard/Laboratoire
chmod -R 751 Poudlard/"Bureau de Dumbledore"
chmod 000 Poudlard/"Bureau de Dumbledore/Etagères/Tiroir caché"
chmod -R 770 Poudlard/Cuisines
chmod -R 751 Poudlard/"Bureau de Rogue"
chmod -R 711 Poudlard/"Bureau de Rogue/Tiroir du bureau"
chmod -R 711 Poudlard/"Bureau de Rogue/Malle fermée"
chmod 715 Poudlard/"Salle des potions/DROITS.txt"

