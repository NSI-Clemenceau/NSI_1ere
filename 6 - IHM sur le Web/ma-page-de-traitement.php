<?php // Commentaire : indique le début d'un script php.

$html=<<<HTML // une variable en PHP sera toujours préfixé avec un $. le <<<HTML indique que la suite contient du HTML jusqu'au HTML;
<!doctype html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>formulaire réponse</title>
</head>
<body>
    <p>Ton nom est : $_GET["user_name"]</p>    // ici on accède à la valeur enregistrée avec la clé  user_name
    <p>Ton email est : $_GET["user_mail"]</p>
</body>
</html>
HTML;           // fin de la ligne de code PHP contenant du HTML
echo $html;     // echo sert à afficher la variable qui suit. On affiche ici la variable html.
?>