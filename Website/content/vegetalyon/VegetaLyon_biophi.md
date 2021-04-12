## Introduction
L'objectif de cet indicateur est de prendre un compte la place des arbres dans la ville, en tant qu'habitant se déplaçant à pied ou d'autres mobilités douces. En effet, bien que la végétalisation ai beaucoup de qualités purement pratiques, elle est aussi mise en avant pour l'athmosphère que la proximité des arbres procure sur les citoyen, à un niveau plus sensible. Ainsi, en se basant sur les isovistes, c'est à dire les champs de visions depuis les parcours urbains, nous pouvons identifier les zone les moins vertes au sens le plus littéral du terme. 

## Sources
Les fonctions de T4GPD utilisées sont développées par Thomas Leduc, et disponibles ici: https://github.com/crenau/t4gpd
Nous le remercions chaleureusement pour son travail, son cours et ses conseils.

## Critères choisis
Afin de limiter l'étude à des temps de calculs abordable et sans les connaissance des outils mathématique de distance pondéré précis nous avons décidé de bâtir notre indicateur selon les critères suivants: 
-le champ de vision pris en compte serait de 50m
-la distance n'est pas prise en compte, seul le nombre d'arbre dans la zone de vision
-la direction de la voirie n'est pas prise en compte
-les points capteurs sont répartis tous les 10 metres le long des voiries

## Données utilisées
Les données utilisées pour cet indicateurs sont les suivantes:
BD topo:
- Bâtiments : Polygones géoréférencés
- Voiries : Lignes géoréférencées
Donnée complémentaires:
- Arbres d'alignement de la ville de Lyon : Points géoréférencés

## Fonctionnement de l'algorythme
Le fonctionnement de cet indicateur est le suivant
* Récupération des données nécessaires. Les calculs étant volumineux, se restreindre sur une petite zone pour un ordinateur classique.
* Définir nos points capteurs le long des axes de voirie
* Calculer les aires d'isovist à 50 metres pour chaque capteur
* Associer à chaque capteur le nombre d'arbres recensé dans la zone
* En déduire un indicateur basé sur la médiane: k = ( Nombre d'arbres / m ) ^ p .
     
     m est un facteur, basé originellement sur la médiane ou le maximum du nombre d'arbres pour un isoviste, il change l'entervale des valeurs prises par le tvf, mais pas sont afficheage.
     
    p est le facteur de puissance, pris < 1 ,  qui permet un meilleur affichage dans le cas où les zones avec un nombre trop élevé d'arbres fausseraient les résultats, empêchant de différencier les zones sans aucun arbres des zones avec tout de même quelques  uns. 
* Afficher la carte de l'aire considérée avec des points de couleur pertinents
* Une fois le calcul terminé, nous exportons le résultat dans un fichier shapefile, pour pouvoir l'ouvrir dans QGIS


## Étude en python
En complément des bibliothèques classiques telles que Geopandas, Shapely, Mathplotlib etc., nous avons utilisés la bibliothèque Python T4gpd développée par Mr.Thomas Leduc, pour les deux fonctions que voici:

*Utilisation de `STDensifier`* : 
Cette fonction permet de créer des capteur, ou point d'intérêt, le long d'une géométrie, ici la couche voirie. 

*Utilisation de `STIsovistField2D`* : 
Cette fonction permet d'extraire autour d'un point, une aire correspondant à tous les points dans un certain rayon qui ne sont pas occultés par

## Méthode de comptage et indicateur TVF:

La méthode de comptage du nombre d'arbre avec une liste est identique en principe à celle développée dans le tree proximity factor, avec juste l'ajout de ce facteur m, modifiable, pour un plus grand visibilité.

## Limites de cette méthode

Dans le processus d'appréciations des distances, la visions à 50 mètres, ainsi que le facteur median du nombre d'arbres à la valeur de 4 sont des choix arbitraires qui pourrait gagner à être discuté et optimisés.

De plus, le comptage des arbres dans les polygones d'isovists ne tiennent pas en compte de la distance entre le capteur et l'arbre. Ainsi, une importance plus ou moins croissante de l'arbres par rapport à la distance du capteur avec celui-ci pourrait être pertinent avec un modèle mathématique adapté.

Dans le calcul de cette méthode je me suis arrêté au capteurs le long des voiries, afin de pouvoir avoir un temps de calcul abordable tout en ayant des résultats pertinents, une carte de tout l'espace serait possible, se rapprochant alors du "Tree Proximity Factor" développé par Baptiste Larrouy.

Enfin, les données présentes sont uniquement celle des arbres d'allignement et non celle des parcs, et des espaces privés, qui sont tout de même visibles depuis la rue.

[Page précédente - Toits végétalisés](VegetaLyon_Toits)

[Page suivante - Proximité aux arbres](VegetaLyon_Proximite-aux-arbres)