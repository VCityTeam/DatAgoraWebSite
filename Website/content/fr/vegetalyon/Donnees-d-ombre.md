## Introduction
Parmi les différents indicateurs à produire, nous nous sommes mis d'accord sur l'ombre que de nouveaux arbres pourraient apporter. En effet, Lyon est située dans la moitié sud de la France, et le climat actuel ainsi que le réchauffement climatique nous poussent à vouloir planter davantage d'arbres pour créer de l'ombre, permettant de créer des zones plus fraîches pour les passants.

Nous avons donc décidé de créer un indicateur permettant de visualiser les zones actuellement au soleil. Pour cela, nous avons raisonné selon l'ombre déjà présente, en identifiant deux sources d'ombre principales : l'ombre projeté par les bâtiments de la ville, et l'ombre des arbres déjà présents.

Notre étude se base donc sur les données des bâtiments et des arbres qui sont déjà plantés dans Lyon. Le raisonnement se déroule comme suit : 
```
Créer une grille de l'espace.
Pour une date et une heure donnée, calculer l'empreinte de l'ombre sur la zone.
Pour chaque point et pour chaque date choisie, faire : 
> Si le point est compris hors de l'empreinte d'ombre : 
> > Ajouter un score à ce point arbitrairement coefficienté selon la date et l'heure en question.
```

## Sources
Les fonctions de T4GPD utilisées sont développées par Thomas Leduc, et disponibles ici: https://github.com/crenau/t4gpd
Nous le remercions chaleureusement pour son travail, son cours et ses conseils.

## Critères choisis
Nous étude a alors été réalisée sur les critères suivants :
- La période de l'année, calculs pour les équinoxes, les solstices, et à intervalles réguliers entre ces dates.
- L'heure de la journée, calculs à 10h, 13h et 16h, permettant de visualiser l'ombre présente lorsque le soleil se trouve à l'est, au zénith puis à l'ouest.
- La température, en ajoutant des coefficients arbitraires aux différentes dates de l'année, selon l'importance et la volonté d'avoir du soleil. En effet, qu'on soit en hiver ou en été, à 10h ou à 13h, l'impact du soleil est complètement différent. Ces coefficients sont expliqués dans la partie _Mise en place de la méthode_ .

## Mise en place de la méthode
* Récupération des données nécessaires : Données des bâtiments, des arbres, des routes, des parcs et jardins. Les calculs étant volumineux, se restreindre sur une petite zone pour un ordinateur classique.
* Via QGis, et en utilisant le plugin MMQGis, création d'une grid de points 5x5 (en m). Bien veiller à ce que la grille se retrouve aux mêmes coordonnées que le reste des données.
* En `python`, on importe la grille, et on la réduit avec `Grid.py` (permet de supprimer les points non essentiels et réduire les temps de calcul)
* En `python`, nous importons les différentes couches pour le calcul d'ombres : la couche des bâtiments (`Buildings.shp`) et la couche des arbres présents dans la rue (`Arbres_alignement.shp`). Ces deux couches sont présentes dans le [dossier `data` du code](https://github.com/gheritarish/vegetalyon/tree/master/data).
* Une fois ces couches importées, nous importons la nouvelle grille dans un nouveau geodataframe.
* Nous ne gardons pour notre calcul que les bâtiments ayant une hauteur positive et les arbres ayant un feuillage de taille positive (pour éviter les problèmes lors du calcul d'ombres).
* Pour chaque moment choisi, nous ajoutons deux colonnes dans le geodataframe de la grille : l'une indiquant 1 si le point est à l'ombre d'un bâtiment, 0 sinon ; l'autre indiquant 1 si le point est à l'ombre d'un arbre, 0 sinon.
* À partir de ces deux colonnes, nous mettons à jour le coefficient d'ensoleillement : 
  * si l'un des deux coefficients est à 1, alors le coefficient d'ensoleillement est inchangé, puisque le point est à l'ombre d'un arbre ou d'un bâtiment;
  * si les deux coefficients sont à 0, alors le coefficient d'ensoleillement augmente de *x*.
* *x* est donné selon les critères suivants : 
  * de mai à août le midi, *x = 10*
  * de mai à août à 10h et 16h, *x = 7*
  * en mars, avril, septembre et octobre à midi, *x = 5*
  * en mars, avril, septembre et octobre à 10h et 16h, *x = 3*
  * en janvier, février, novembre et décembre, quelle que soit l'heure, *x = 1*
* Une fois le calcul terminé, nous exportons le résultat dans un fichier shapefile, pour pouvoir l'ouvrir dans QGIS et classer selon le coefficient d'ensoleillement.

## Étude en python
Pour réaliser notre étude, nous nous sommes appuyés sur le module python [`t4gpd`](https://sourcesup.renater.fr/projects/t4gs/) développé par Thomas Leduc, un module dont l'objectif est de faciliter l'analyse spatiale en python, en complément de `GeoPandas`.

Le module possède différentes fonctions pour l'étude des ombres, notamment les fonctions `STHardShadow` et `STTreeHardShadow` pour respectivement calculer l'ombre du bâti et l'ombre des arbres à une heure donnée.

Une fois ces différents calculs faits, en prenant en compte les coefficients, nous serons en mesure d'établir une carte avec des points plus ou moins au soleil au cours de l'année.

*Utilisation de `STHardShadow`* : Pour utiliser `STHardShadow`, nous avons besoin de préciser plusieurs facteurs. Tout d'abord, la fonction a besoin du `GeoDataFrame` contenant nos bâtiments. Ensuite, nous précisons un horaire, sous la forme d'un `datetime`. Puis, nous utilisons l'argument `occludersElevationFieldname` pour préciser le champ qui caractérise la hauteur des bâtiments, un argument `altitudeOfShadowPlane` pour préciser la hauteur du plan d'ombre (égale à 0), et enfin, l'argument `aggregate=True` qui nous permet de grouper toutes les ombres des bâtiments.

*Utilisation de `STTreeHardShadow`* : Pour utiliser `STTreeHardShadow`, nous précisons à nouveau plusieurs arguments. Tout d'abord, le `GeoDataFrame` contenant nos arbres, ainsi que l'horaire sous la forme d'un `datetime`. L'argument suivant, `treeHeightFieldname`, nous permet d'indiquer la hauteur de l'arbre, ici un champ appelé `hauteurtot`. Puis, l'argument `treeCrownRadiusFieldname` permet d'indiquer le rayon de l'arbre, ici contenu dans un champ appelé `rayoncour`. Enfin, nous utilisons à nouveau les champs `altitudeOfShadowPlane` et `aggregate=True` pour obtenir une seule forme d'ombre pour tous les arbres. Cette fonction calcule ensuite les ombres des arbres, selon l'hypothèse que les feuillages forment une sphère (houppier sphérique).

## Discussion sur cette méthode
Cette méthode n'est pas parfaite et ne peut pas l'être. En effet, travailler avec des données numériques apporte nécessairement des biais, notamment dans ceux de création des données. Nous utilisons des données provenant de l'[open data de Lyon](https://data.grandlyon.com/accueil) ainsi que de la [BD TOPO](https://geoservices.ign.fr/documentation/diffusion/telechargement-donnees-libres.html#bd-topo), qui peuvent présenter des différences avec la réalité.

De plus, les données et algorithmes que nous utilisons ne prennent pas en compte le relief de l'environnement. Ainsi, une colline peut projeter des zones d'ombres que nous n'avons pas calculées, et qui peuvent amener des différences entre notre modèle et la réalité.

[Page précédente - Méthodes de travail](Methodologie)

[Page suivante - Toits végétalisés](Toits)