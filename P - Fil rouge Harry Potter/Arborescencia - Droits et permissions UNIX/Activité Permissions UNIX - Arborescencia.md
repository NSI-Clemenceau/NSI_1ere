# DIU NSI - Lycée Clemenceau, Nantes

Thème "Système" : gestion des droits et permissions d'accès aux fichiers

## Séance de cours sur les commandes UNIX, en particulier sur celles gérant les droits et permissions

### Progression pédagogique et prérequis

- dernier chapitre du thème "Système d'exploitation"
- les commandes UNIX de base ont déjà été vues (navigation dans l'arborescence, création / modification / suppression de fichiers / dossiers)

### Conditions pédagogiques

- travail individuel, en autonomie
- Accès à un terminal Linux, sur une machine (ou VM) disposant déjà d'une arborescence construite par l'enseignant (Un fichier `Initialisation.sh` permet un déployement automatique de l'arborescence et des droits associés)
- Accès à une fiche d'activité basique, comprenant les consignes de mise en route et un mémo des commandes UNIX nécessaires à l'activité (dont celles déjà vues en séances précédentes)
- 2h

### Conditions techniques

Accès à un terminal Linux, sur une machine (ou VM) disposant déjà d'une arborescence construite par l'enseignant, avec les droits d'accès prédéfinis. 

Pour cela, on peut utiliser le fichier `Initialisation.sh`, qui permet un déployement automatique de l'arborescence et des droits associés.

Pour utiliser ce fichier, il faut :

- Disposer d'une distribution Linux avec `adumbledore` comme super-utilisateur (voir mot de passe dans `codes Poudlard.md`)
- Créer un dossier /home/NSI en `chmod 775` (`chown adumbledore:poudlard`)
- Copier `Initialisation.sh`, `Validation.sh` et dossier `Serres` dans NSI
- `sudo sh Initialisation.sh`
- Saisir les pwd utilisateur tels qu'ils sont notés dans `codes Poudlard.md`

Sinon...

On peut simplement utiliser la copie de VM VirtualBox déjà préparée par quelqu'un d'autre.

### Résumé de la séance

- Fil rouge *Harry Potter* : une suite d'actions doit permettre à un apprenti sorcier de récupérer les ingrédients d'une potion nommée *Arborescencia* (étape 1), puis de préparer cette potion (étape 2).
- Activité basée sur un principe de *jeu de piste* : un indice initial (lisible dans le fichier racine `README.txt`) doit amener à trouver l'indice suivant, etc.
- 2 étapes essentielles :
    1. une navigation dans une arborescence déjà construite
    2. une création d'arborescence avec les droits et permissions adéquates
- 1ère étape : chaque fichier trouvé comprend à la fois une *clé*, qui sera nécessaire pour valider l'étape 2, mais aussi l'indice conduisant aux fichiers suivants
- Pour trouver ces différents fichiers, il faudra donc :

    - réinvestir les connaissances acquises sur la navigation dans une arborescence, la lecture de fichiers,...
    - modifier des permissions pour avoir accès à certains dossiers / fichiers.
    - les nouvelles commandes nécessaires à ces modifications de permissions seront données dans les indices (fichiers `INGREDIENT.txt`). A réfléchir s'il est pertinent de les donner immédiatement dans le memo ?
- la seconde étape consiste à créer une arborescence comprenant des dossiers (noms des lieux) et des fichiers (noms des ingrédients trouvés dans chaque lieu) ayant des permissions bien précises (déterminées par les clés de chaque ingrédient trouvé à l'étape 1). 
- la seconde étape sera validée automatiquement par un script, nommé `Validation.sh`, conçu par l'enseignant, trouvé à la fin de l'étape 1.

### Remarques

- La carte mentale a été réalisée avec le logiciel FreePlane 1.7

### Consignes à donner aux élèves

- Prendre des notes papier tout au long de l'activité
- Commencer l'activité avec les identifiants de Harry (log : `hpotter` ; pwd : `DudleyForEver`)
- Ouvrir un terminal (`Ctrl + T`)
- Aller dans `/home/NSI/Poudlard`
- Mise à sa disposition les commandes de base (prérequis) : `cd ls cat touch mkdir` ...
- Lire en priorité les fichiers README.md (commande `cat README.md`)
- Au besoin, changer d'utilisateur directement dans le terminal, avec la commande `su`
- Des aides ponctuelles et individuelles, sous forme de feuillets "coup de pouce", pourront être distribuées
- Une partie de la séance suivante sera consacrée à une correction ludique, où les élèves s'associent à des personnages fictifs et devront déterminer s'ils auraient eu droit ou nom de franchir cette étape, au fur et à mesure de la correction.
- Alternative : on peut envisager aussi une courte évaluation avec des questions de type :
  - Pourquoi Harry n'a-t-il pas pu entrer dans le bureau de Rogue ?
  - Pourquoi Dumbledore est-il le seul à pouvoir ouvrir son tiroir secret ?
