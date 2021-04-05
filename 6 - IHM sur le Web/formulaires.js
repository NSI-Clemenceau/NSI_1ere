function selection() {
    	  /* selecteur est la liste des valeurs (value) possibles du menu déroulant 'choix'.
    	  Les lignes suivantes (console.log) permettent d'afficher certaines variables dans la console.
          La console est accessible avec la touche F12 sous Brave, puis l'onglet Console.*/
    const selecteur = document.getElementById('choix');
    console.log(selecteur);
    console.log(selecteur[0], selecteur[1], selecteur[2], selecteur[3], selecteur[4]);
    console.log(selecteur.selectedIndex);
          
          /* selecteur.selectedIndex renvoie l'index de la ligne sélectionnée ; 
	    selecteur[selecteur.selectedIndex] renvoie la valeur(value) sélectionnée */
    const monChoix = selecteur[selecteur.selectedIndex]; 
    console.log(monChoix);
    
    	   /* affichage en console de la valeur sélectionnée (value) et du texte affichée pour cette valeur.*/
    console.log(monChoix.value + ' ' + monChoix.text); 
    
   	 /* permet de remplacer le contenu existant dans une balise identifiée par son id 'nat'
       par le text contenu dans la variable monChoix.text, 
       c'est à dire par le texte lié au choix fait dans le menu déroulant.  */
    document.getElementById('nat').innerHTML = monChoix.text;
}

function choix() {
    const nsi = document.getElementById("nsi").checked;
    const ma = document.getElementById("ma").checked;
    const svt = document.getElementById("svt").checked;
    console.log(nsi);
    aff = ""
    if (nsi && ma && svt) {
    	aff = "Tu ne peux conserver que deux spécialités !"
    } else {
	    if (nsi) {
		aff = aff + " Tu conserves NSI. Bravo bon choix !</br>";
	    }
	    if (ma) {
		aff = aff + " Tu conserves les Maths</br>";
	    }
	    if (svt) {
		aff = aff + " Tu conserves les SVT";
	    }
	}
    document.getElementById('choix_spe').innerHTML = aff
}
