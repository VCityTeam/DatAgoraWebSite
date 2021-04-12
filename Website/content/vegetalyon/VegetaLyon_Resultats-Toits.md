## Introduction
Cette page présente les résultats obtenus par l'algorithme sur les [toits végétalisés](VegetaLyon_Toits). Nous allons ici présenter les cartes de nos résultats avant de les expliquer. Enfin, nous montrerons l'usage qui peut être fait d'une telle carte.

## Cartes des résultats

<img src="https://github.com/gheritarish/vegetalyon/wiki/images/finale.png" width="600">

Ces quatre cartes ont été crées sans fond de carte, l'objectif étant juste de représenter les toits et le grand bâtiment de la gare permettant déjà de localiser les bâtiments. Nous avons utilisé l'outil de visualisation intégré dans `GeoPandas`, qui nous permet d'afficher ces quatre cartes choroplèthes des quatre indicateurs sur la même figure. Nous avons uniquement affiché le résultat de notre script sur la donnée de toits plats fournie par sur l'OpenData du Grand Lyon sur la zone totale. 

On réalise un traitement en affichant les bâtiments du jaune lorsque l'indicateur est le plus élevé (donc le plus positif) au bleu foncé lorsque l'indicateur est le plus faible (donc là où le toit est le moins végétalisable). La méthode ici utilisée est celle des intervalles égaux. Nous présentons ici les indicateurs normalisés, dans un but de comparaison entre les différentes cartes. 


<img src="https://github.com/gheritarish/vegetalyon/wiki/images/intervalles.png" width="500">

Cette dernière carte est la visualisation de notre indicateur global de végétalisation avec la méthode des intervalles égaux. De la même manière que pour les cartes précédentes, comme la légende l'indique, les bâtiments les plus végétalisables sont représentés dans les tons jaunes contrairement à ceux pour lesquels les toits où cela serait moins pertinent sont affichés en bleu foncé/violet. Pour avoir plusieurs perspectives différentes de visualisation, on réalise la même carte mais avec une méthode par quantiles : 

<img src="https://github.com/gheritarish/vegetalyon/wiki/images/quantiles.png" width="500">

Nous pourrions reprocher à ces carte qu'elles n'affichent pas de manière plus claire les toits qui ont été déterminés "non végétalisables" car pas assez exposés au soleil. Actuellement, ces toits sont représentés en noir. Pour cela, nous pourrions afficher la même donnée avec l'aide de QGIS qui nous permet de créer une classe de couleur spéciale pour les toits dont l'**IGVG** vaut zéro d'une autre couleur. On a fait ici l'essai avec une petite zone, une méthode de visualisation par quantiles et des toits non végétalisables en rouge : 

<img src="https://github.com/gheritarish/vegetalyon/wiki/images/qgisrouge.png" width="500">

## Comment utiliser ces cartes ?

Ces deux visualisations (celle avec les quatre indicateurs et celle avec l'indicateur global) peuvent servir à des fins différentes. Celle qui décrit l'indicateur global peut être utile pour avoir un point de vue global et rapide sur la situation des toits de la ville. Elle est aussi très pertinente si l'on veut éliminer les toits "non-végétalisables". Cependant, étant donné le caractère subjectif de la pondération des indicateurs dans le calcul de l'**IGVG**, elle n'est pas forcément la plus adaptée à toutes les situations. 

Les quatre cartes comportant les données sur les 4 indicateurs, est-elle plus précise et propose un point de vue plus objectif sur la situation. Il permet aussi à la personne à qui l'on présente ces cartes de prendre des décisions en connaissance de cause pour tous les indicateurs et de prendre en compte de manière plus importante les indicateurs qui lui semblent les plus adaptés à la situation. 

## Conclusion
Notre algorithme permet de considérer un ensemble de toits plats et grâce à différents traitements, de créer quatre indicateurs pour l'aide à la décision concernant la végétalisation d'un toit. Il permet aussi d'avoir un point de vue global sur la possibilité de végétalisation grâce à un dernier indicateur qui regroupe tous les autres. 

[Page précédente - Résultats sur les ombres](VegetaLyon_Resultats-ombre)

[Page suivante - Résultats sur les visions arborée](VegetaLyon_Resultats-Vision)