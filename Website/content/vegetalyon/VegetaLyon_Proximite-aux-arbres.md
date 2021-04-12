## Introduction
Parmi les différents indicateurs à produire, le premier auquel nous avons pensé est la proximité aux arbres en chaque point. En effet pour planter de nouveaux arbres, il est intéressant de connaitre les zones les moins arborés ainsi que celles qui ont déjà une concentration d'arbres importante.

Nous avons donc décidé de créer un indicateur qui considère en chaque point la proximité aux arbres et qui répond à plusieurs critères. En effet d'une part l'indicateur doit prendre en compte la présence d'arbres dans la zone en général mais aussi favoriser les ilots d'arbres rapprochés qui créent des petits ilots de fraicheur. L'indicateur s'apparente alors à une heatmap de le concentration d'arbres.

Pour développer un tel indice nous avons récupérer les données de bâtiments et d'arbres de la ville de Lyon. Voici le raisonnement pour créer l'indicateur : 
```
Créer un maillage de l'espace.
Pour chaque maille, calculer le nombre d'arbres qui se trouve à proximité.
Attribuer un score de proximité entre 0 et 1 à cette maille.
```

## Sources
Les fonctions de T4GPD utilisées sont développées par Thomas Leduc, et disponibles ici: https://github.com/crenau/t4gpd .
Nous le remercions chaleureusement pour son travail, son cours et ses conseils.

## Critères choisis
Le critère principale de cette étude est **la proximité aux arbres**. Il y a ensuite à décider de deux paramètres importants : quelle est la distance maximale qu'on peut encore appeler "proximité" et à quelle point les ilots d'arbres regroupés influencent sur la concentration.
Ces valeurs ont été choisi arbitrairement dans le code (la proximité est un rayon de 100m) et les paramètres sont visibles et peuvent être facilement modifier selon le besoin.

## Étude en python
Pour réaliser notre étude, nous nous sommes appuyés sur le module python [`t4gpd`](https://sourcesup.renater.fr/projects/t4gs/) développé par Thomas Leduc, un module dont l'objectif est de faciliter l'analyse spatiale en python, en complément de `GeoPandas`.

Le module possède une fonction très intéressante et utile `STGrid` qui permet de créer des sensors (maillage) autour des batiments.

*Utilisation de `STGrid`* : La fonction prend en compte l'empreinte des bâtiments et crée un maillage de l'espace urbain stocké dans un géodataframe ce qui nous permettre ensuite de l'exporter au format shapefile.

## Mise en place de la méthode
* Récupération des données nécessaires : Données des bâtiments et des arbres.
* Création du maillage avec la fonctionnalité `STGrid`
* Tracé d'un cercle d'un rayon r = 100m (voisinage) autour de chaque point du maillage
* Fusion des géodataframes pour compter le nombre d'arbres pour chaque voisinage
* Application d'une fonction puissance inférieur à 1 pour renforcer les effets d'ilots
* Stockage des résultats dans un géodataframe dans la colonne 'tpf' pour ensuite pouvoir l'exporter sous qgis

## Discussion sur cette méthode
Cette méthode à le bénéfice d'être un algorithme relativement simple qui peut tourner rapidement sur n'importe quelle machine (il faut compter environ 15min pour un carré de 2km de coté). Cette simplicité vient d'une part de la fonction de Thomas Leduc qui crée un maillage uniquement sur les zones non bâtis et d'autre part du fait qu'on opère juste une fusion de géodataframe et des opérations simples sur des listes. 

Le principal est en fait dans le réglage des paramètres r (rayon de proximité) et p (fonction puissance pour la prise en compte des arbres isolés). Ces deux paramètres ont été choisi en essayant d'obtenir le résultat le plus parlant sur la zone que nous étudiions autour de Part-Dieu mais peuvent être facilement modifié pour étudier une autre zone et selon les besoins de l'étude. Un avantage majeur de cette méthode est que la couche peut être directement exporté au format shapefile puis utilisés sous QGIS pour la visualisation

Néanmoins l'algorithme possède beaucoup d'axes d'améliorations. Le premier serait la prise en compte des parcs dans la ville. Ce n'est pour l'instant pas le cas car nous avons considéré que la gestion d'arbres dans un parc revient plus aux gestionnaires de ce parc pour des questions pratiques et esthétiques qu'un algorithme comme le notre ne pourrait pas prendre ne compte. Aussi les paramètres r et p qui influencent sur le rendu final pourrait être automatisés pour s'adapter directement à la zone étudiée et ainsi produire un rapport visuel très parlant.

[Page précédente - Vision arborée](VegetaLyon_biophi)

[Page suivante - Résultats](VegetaLyon_Resultats)