## Introduction
Cette page présente les résultats obtenus par l'algorithme sur les [ombres](Donnees-d-ombre). Nous allons ici présenter la carte de nos résultats avant de l'expliquer. Enfin, nous montrerons l'usage qui peut être fait d'une telle carte.

## Carte des résultats
[[images/Ombres.png]]

Cette carte a été créée sur un vide, dans l'objectif de faire ressortir nos résultats. Sur ce fond, nous avons ajouté une première couche, qui est celle des différents bâtiments du quartier, représentés en gris. Nous avons ensuite affichés les arbres, provenant de la [donnée d'alignement des arbres de la métropole](https://data.grandlyon.com/jeux-de-donnees/arbres-alignement-metropole-lyon/donnees), représentés par des points verts.

Enfin, pour l'affichage de notre grille, nous avons réalisé un petit traitement. En effet, ces points sont d'un rouge plus foncé s'ils sont davantage au soleil au cours de l'année, avec une gradation vers le rouge foncé plus le coefficient est haut. La méthode utilisée pour ce classement a été celle des intervalles égaux. Ici, cette méthode ne présente pas de grande différence avec celle des quantiles (même nombre de points dans chaque intervalle), les résultats étant principalement différents pour les faibles coefficients d'ensoleillement.

Ci-après nous avons présenté la même carte en rajoutant un fond de carte OSM. En réduisant un peu l'opacité de la grille, cela permet de mieux se rendre compte des espaces en question notamment ceux que la grille ne couvre pas.

[[images/Fond-carte-ombres.png]]

## Comment utiliser ces cartes ?
Une fois que nous avons utilisé une telle carte, la question que nous pouvons nous poser est l'usage que nous pouvons en faire. En effet, une telle carte n'est pas forcément très parlante.

Toutefois, comme expliqué dans notre [méthode](Donnees-d-ombre), nous avons limité la grille aux points hors des chaussées des routes et hors des parcs qui sont déjà arborés. Ainsi, les points restants ne sont que des points où il est possible de planter des arbres sans trop déranger.

Ensuite, cette carte permet de visualiser des zones, davantage que des points. En effet, si un point est presque toujours au soleil mais que les points qui lui sont voisins ne le sont pas, il est assez intuitif de se dire qu'un arbre planté à un tel endroit ne sera pas aussi efficace qu'un arbre planté dans une zone sans aucune ombre.

Nous pouvons voir plusieurs zones se dessiner, au sud de la zone étudiée. Ces zones sont composées de points d'un rouge sombre, signe qu'il s'agit de zones ensoleillées tout au long de l'année, quelque soit l'heure de la journée. Ainsi, il est assez facile de penser que ces zones sont peu agréables pour des piétons l'été, et sont des zones qu'il pourrait être intéressant de rafraîchir en plantant des arbres.

Une fois que ces zones ont été sélectionnées, il ne reste plus qu'à étudier la possibilité physique de planter des arbres à cet endroit. Cela nécessite une étude plus approfondie du terrain et, notamment, de la disponibilité en eau. Toutefois, si les conditions le permettent, une telle zone paraît propice à la plantation d'arbres.

## Conclusion
Notre algorithme permet de considérer une grille, et un traitement avec un logiciel tel que QGIS nous permet d'observer le résultat du coefficient d'ensoleillement que nous avons calculé. Ensuite, la représentation permet de pré-selectionner plusieurs zones où il est possible et intéressant de planter des arbres pour la ville.

[Page précédente - Résultats](Resultats)

[Page suivante - Résultats sur les toits végétalisés](Resultats-Toits)