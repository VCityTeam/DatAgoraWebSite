### Écoulement du temps
Les jours s'écoulent au cours de la simulation. Chaque jour dans le jeu correspond à une minute réelle. Cet écoulement des jours permet de calculer les coûts d'entretien des plantes disposées dans la scène. En effet, chaque plante possède une valeur en euros correspondant à son coût d'entretien par jour. Ces coûts sont sommés pour obtenir un coût par jour, lequel est ajouté à l'argent total dépensé au début de chaque nouveau jour. Il est aussi possible de faire un bon dans le futur d'un certain nombre de jours afin d'accélérer la simulation, cela grâce au bouton _Skip_. Lors d'un saut dans le futur, l'argent total dépensé est incrémenté du nombre de jours x le coût d'entretien quotidien. 

De plus, en fonction de l'avancement de la journée, la lumière varie de manière à simuler la lumière du Soleil. Cette feature est purement visuelle et n'influe ni sur le comportement des PNJ ni sur les valeurs de flux. De manière générale, l'écoulement du temps n'influe pas sur les valeurs de flux, seules les plantes permettent de les modifiées.

[Page précédente - II.5 - Gestion de l'argent](Argent)

[Page suivante - II.7 - Menu principal](Menu)