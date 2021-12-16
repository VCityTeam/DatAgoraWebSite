Bienvenue sur le wiki du projet VegetaLyon, qui s'inscrit dans le cadre du projet DatAgora.

## Qui sommes-nous ?
Nous sommes un groupe de cinq étudiants de l'École Centrale de Nantes en option ville numérique, qui avons travaillé en partenariat avec le projet [DatAgora](https://github.com/VCityTeam/DatAgora) dans le cadre de notre option. Notre formation vise à nous former à l'utilisation de données avec une dimension urbaine. Nous avons, à ce sujet, eu des cours de bases de données, de systèmes d'informations géographiques, d'enjeux de la représentation et de la visualisation, ainsi que des cours de modélisation.

Au cours de ce projet, nous avons travaillé avec Gilles Gesquière, notre commanditaire, et avons été encadrés par Myriam Servières et Vincent Tourre, professeurs à l'École Centrale de Nantes.

## Contexte
Lyon a lancé en 2017 le plan Canopé, un plan de végétalisation de la métropole lyonnaise, visant à planter un total de 300 000 arbres. Toutefois, il n'est pas si aisé de planter des arbres. En effet, chaque arbre a besoin de soleil pour pouvoir pousser, mais aussi d'eau, de place pour étendre ses racines, de temps et de place pour se développer, etc.
De plus, la végétalisation ne se limite pas uniquement aux arbres. Effectivement, il est possible de végétaliser une ville en utilisant des arbustes, des toits "verts" ou encore des potagers urbains.

Dans ce contexte, plusieurs points peuvent attirer notre attention. Tout d'abord, les zones qui sont déjà boisées ne sont pas celles à végétaliser en priorité, contrairement aux zones plus industrialisées.
De plus, la largeur des rues est un facteur à prendre en compte. En effet, des rues trop étroites ne paraissent pas, à première vue, être des endroits où planter des arbres imposants à cause du manque de place, alors que des arbustes en pot pourraient s'y épanouir.
Enfin, la question de la vue aérienne n'est pas à négliger. Si des toits bétonnés ne sont pas attirants pour l'œil, tous ne peuvent pas non plus être transformés en potagers ou parterres de fleurs si le soleil ne les atteint pas.

Ainsi, *VegetaLyon* s'inscrit dans le projet *DatAgora*, qui vise à analyser des données actuelles de manière croisée afin de déterminer comment placer de la végétation en ville.

## L'objectif et le cadre de notre travail
Notre contribution s'inscrit dans le cadre du projet Canopée, qui nous permet de nous intéresser à l'ajout de végétation dans la ville de Lyon.
Dans ce projet, nous pouvons définir quatre objectifs distincts.

Le premier de ces objectifs est la définition d'indicateurs pertinents pouvant aider des décisionnaires concernant le placement de nouvelle végétation, 
prenant en compte le type de verdure utilisé (arbres, arbustes, potagers). En effet, toutes les essences d'arbres ne nécessitent pas la même quantité d'eau ou de soleil. De la même manière, un potager aura besoin de davantage de soleil si l'objectif est qu'il donne des légumes.

D'autre part, comme évoqué dans le contexte de ce projet, il est intéressant de questionner l'utilité de la végétation. Est-ce que l'objectif est la beauté de la ville à l'œil, l'oxygénation de celle-ci, un autre ? Il est donc nécessaire de nous intéresser au but de la végétalisation dans la ville et de nous concentrer sur certains de ses aspects positifs.

En parallèle, nous pourrons documenter la méthode, les moyens mis en œuvre et les données utilisées pour produire ces indicateurs. Comment ces derniers ont été choisis ? Quels sont les critères, objectifs comme subjectifs, que nous avons choisis pour l'élaboration des facteurs ?

Enfin, nous pourrons implémenter cette méthode afin d'obtenir un résultat. Implémenter une telle méthode dans `python` pourra permettre d'étendre l'étude à d'autres quartiers de la ville de Lyon, voire de réutiliser ce code pour d'autres villes, si les données que nous avons utilisées sont également disponibles.

## Notre démarche de travail
Notre démarche se divise en différentes parties. Tout d'abord, les **méthodes de travail utilisées**, où nous expliquons en détail le travail réalisé et les indicateurs que nous avons créé ou utilisé dans notre projet. Nous y expliquons aussi les décisions prises pour nos différents algorithmes ainsi que le fonctionnement des différents algorithmes.

On trouve ensuite notre code en lui même, permettant la production de ces indicateurs. Ce code est présent dans la partie [Code](https://github.com/gheritarish/vegetalyon) de ce github, et les résultats en sont expliqués dans la partie intitulée **résultats**.

La dernière partie, elle, est composée des **ressources** que nous avons pu utiliser, en expliquant le travail qui a été fait par les différentes personnes qui ont pu nous inspirer et nous aider au cours de ce projet. Elles peuvent également être des ressources moins reliées au projet, mais qui nous ont permis de nous plonger dans le sujet (comme le résumé sur les modèles économiques possibles pour le projet Canopée).

## Périmètre
Dans le cadre de notre étude, nous allons nous intéresser au quartier de Part-Dieu de Lyon. Pour la visualisation des indicateurs, nous avons été contraints de nous restreindre encore plus, se limitant à quelques rues autour de l'Orchestre national de Lyon situé à l'Ouest de la gare Part-Dieu. De plus, nous allons nous intéresser à deux parties en particulier : les *rues** et les **toits plats**.

Dans le cadre des rues, ce qui nous intéresse à prendre en compte est la largeur des voiries et la hauteur des bâtiments qui la bordent. On se place d'un point de vue piéton, donc on a pu se restreindre aux trottoirs pour certains indicateurs, comme ce sera expliqué par la suite.

Concernant les toits plats, les critères à prendre en compte peuvent être différents, tels que la hauteur des bâtiments adjacents, la hauteur du toit étudié, etc.

## Volonté de résultat
Le résultat que nous cherchons à obtenir devra permettre à des experts de définir les zones les plus adaptées pour planter de nouveaux arbres selon le type d'arbre à partir d'une visualisation QGIS de différents indicateurs : la vision de surface arborée, l'ombre d'un espace au cours de l'année, la possibilité de végétaliser un toit, et la proximité à un arbre. Ces indicateurs auront été obtenus après traitement via un code `Python`.

Nous expliquerons dans une première partie ces indicateurs, la méthode que nous avons utilisée pour les mettre en place et leur implémentation en `Python`. Dans une seconde partie, nous reviendrons sur nos résultats et les conclusions que nous pouvons en tirer. Enfin, nous présenterons une discussion autour des différents points qui ont pu nous limiter ou qui peuvent être approfondis dans une suite sur ce travail.

## Sommaire de ce wiki
* [Accueil](VegetaLyon)
* [Méthodes de travail](Methodologie)
  * [Données d'ombre](Donnees-d-ombre)
  * [Toits végétalisés](Toits)
  * [Vision arborée](biophi)
  * [Proximité aux arbres](Proximite-aux-arbres)
* [Résultats](Resultats)
  * [Résultats sur les ombres](Resultats-ombre)
  * [Résultats sur les toits végétalisés](Resultats-Toits)
  * [Résultats sur les visions arborée](Resultats-Vision)
* [Ressources](Ressources)
  * [Mémoire de Barbara Tolino](Memoire-de-Barbara-TOLINO)
  * [Résumé des modèles économiques pour Canopée](Resume-des-modeles-economiques-pour-Canopee)
* [Remerciements](Remerciements)

## Contact

Si vous souhaitez nous contacter, voici nos mails : 

Travail sur les toits végétalisés : lenaelle.le-roy@eleves.ec-nantes.fr

Travail sur la proximité des arbres : baptiste.larrouy@eleves.ec-nantes.fr

Travail sur les isovist de végétation : theotimekuhn@gmail.com

Travail sur les ombres : tangi.renaud@gmail.com et baptiste.marlet@eleves.ec-nantes.fr