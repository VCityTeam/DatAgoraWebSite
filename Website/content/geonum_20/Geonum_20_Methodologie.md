###### Mise en place d’une méthodologie


Comme défini auparavant, nous avons caractérisé l’espace pour connaître de quoi il se constitue. Pour réaliser la méthodologie de notre projet nous avons choisi de l’établir en fonction des types d'espaces en surface : le bâti ; la voirie ; les espaces verts ; les terrains non aménagés.

La méthodologie technique revient à projeter les zones où il n’est pas possible de planter un arbre, une par une. Puis lorsque toutes sont affichées, il faudra les fusionner et les soustraire à l’ensemble de la zone d’étude. Alors, le résultat présentera les lieux où il sera possible de planter un arbre.

Nous détaillons ici pour chaque élément de l’espace urbain les données disponibles, comment nous pensons les exploiter via le logiciel SIG QGIS (géotraitement) et les obstacles rencontrés. 


***

# Le territoire urbain en surface se caractérise par 4 types d’espaces :


## Le bâti
Le bâti est une composante importante de l’espace urbain, nous avons choisi de ne pas l’exploiter au cours de ce projet pour éventuellement planter des arbres sur les toits et les façades. Toutefois, comme l’espace urbain se fait de plus en plus riche, selon nous c’est une perspective intéressante à étudier dans le futur afin d’implanter plus de verdure dans nos villes. 
Pour constituer notre masque final, nous allons donc choisir de l’extraire des possibilités de plantation. 

Données disponibles : IGN, BD Topo 69, 2019

__Géotraitement : insertion de la couche__

*Problèmes : À réception, problème de géométrie de la couche. Travail de correction effectué*


## La voirie 
Pour la voirie, l’accès à une donnée précise spatiale des voies est difficile, voire impossible. Bien que nous disposons des largeurs de voies, il n’est pas possible de définir au sol avec précision leurs limites ainsi que leur affectation (voie cyclable, cheminement piéton; etc). 


### Les cheminements piétons (trottoirs, places, esplanades…)
Notre idée initiale était de prendre en compte la largeur du cheminement piéton et sa fréquentation pour déterminer si une plantation d’arbre est possible. Nous pensons qu’il n’est pas possible d’ajouter un arbre sur les trottoirs inférieur à 2m de large (hypothèse que l’on donne). Aussi, nous pensons que la fréquentation d’une rue par les piétons détermine les possibilités d’implantation d’un arbre.
Nous sommes cependant confrontés au problème du manque de données géographiques sur ces espaces. En effet, nous n’avons pas trouvé de couches qui délimite précisément leur implantation. Il n’existe pas de données quantifiant les flux d’individus par rue. Dans le cadre de cette étude où nous cherchons à obtenir un potentiel étendu des plantations d’arbre, nous décidons donc d’inclure l’ensemble de ces espaces en possibilité de plantation. 

Données disponibles : Aucune

__Géotraitement : Ces espaces sont inclus dans la couche positive de plantation d’arbres__

*Problèmes : Manque de données spatiales sur ces espaces* 
____

### Les voies de circulation auto
Nous ne disposons pas d’une couche polygonale de la voirie mais d’une couche linéaire. Nous décidons d’étudier la plantation d’arbres en réduisant au maximum le nombre de voies de circulation. Pour les rues à 2 voies de circulation, nous avons pris le parti de réduire leur nombre à 1. Pour les voies de plus de 2 voies, nous avons ramené leur nombre à 2. 

Données disponibles : Couche PVO Chaussée Trottoirs,Data Grand Lyon, 2016 MAJ journalière

__Géotraitement (raster) : Création d’une zone tampon autour de la ligne en fonction de la largeur de la voie indiquée, pour représenter la voirie existante. Création d’une autre zone tampon définie sur la largeur de voirie réduite. Différence entre ces deux zones. Cette différence est le potentiel de plantation d’arbres__

*Problèmes : Manque de précision d’une donnée linéaire et non en polygone*
___

### Les voies de circulation vélo
Notre idée initiale était de ne pas inclure ces espaces dans les potentiels de plantation. Or, la donnée relative aux voies cyclables est linéaire et renseigne simplement les rues concernées par ce type de voies. Du fait de l’absence d’information spatiale précise, nous n’incluons pas ces cheminements à notre masque positif. 

Données disponibles : Aménagement cyclable de la Métropole de Lyon, Data Grand Lyon, 2011 MAJ journalière

__Géotraitement :  Aucuns__

*Problèmes : Données de mauvaise qualité géographique, difficilement exploitables*
___

### Les voies ferrées & terrains sncf
Nous choisissons d’exclure ces parcelles des options de plantation. Il n’est pas possible de planter sur l’emprise des ballastes de la SNCF, qui ont une largeur de 2.6 m. Les terrains SNCF sont plus larges que les simples voies ferrées. Face aux normes propres à la SNCF et bien qu’il est techniquement possible de planter des arbres sur ces terrains, nous choisissons de les exclure. 
Les voies sont représentées par des lignes. Dans la table attributaire il est possible de savoir combien de voies comportent une ligne.
 
Données disponibles : IGN, BD Topo, 2018 ; Orthophotographie de la Métropole de Lyon, Data Grand Lyon, 2018

__Géotraitement : Inclure les voies aux espaces de plantation impossible : création d’un buffer autour de chaque de voie de 2,6m pour respecter la législation. 
Afin d’harmoniser et d’avoir des polygones sans trous, nous allons recréer les polygones par dessus les différentes zones tampons.__

*Problèmes : Difficulté d’avoir un rendu correct sans reprise de géométrie*
___

### Les voies de tramway
On ne plante pas d’arbre à cet endroit. Avec observation de l’orthophotographie, on remarque une occupation du sol d’une largeur de 7 m des voies de tramway. 

Données disponibles : Lignes de tramway du réseau Transports en Commun Lyonnais, Data Grand Lyon, 2019 ;  Orthophotographie de la Métropole de Lyon, Data Grand Lyon, 2018

__Géotraitement : Création d’une zone tampon de 3,5 m sur chaque voie de tramway. Inclure les voies aux espaces de plantation impossible__

*Problèmes : Aucuns*
___

### Le stationnement en surface
L’intégralité des stationnement en surface représente un potentiel de plantation d’arbres. La réduction des capacité de stationnement est une piste intéressante pour verdir l’espace public.
Ces espaces seront de fait inclus, comme les espaces piétons, à la couche de potentiel de plantation. 

Données disponibles : Aucunes

__Géotraitement : Aucuns__

*Problèmes : Données manquantes*
___

### Le mobilier urbain
Le site Data Grand Lyon offre des couches ponctuelles sur le mobilier urbain supérieur à 2 m². Comme les éléments présents ont des tailles et des emprises au sol difficilement retranscriptible dans un SIG, nous choisissons de ne pas les inclure à la couche d’impossibilité d’implantation. Cependant nous pensons représenter ces informations avec des pictogrammes signalant qu’il y a un élément présent à cet endroit qu’il faut prendre en compte. Dans ces éléments, nous incluons les parcs de stationnement Vélo’v. 

Données disponibles : Mobilier urbain de la Métropole de Lyon, Data Grand Lyon, 2020
Stations Vélo'v de la Métropole de Lyon, Data Grand Lyon, 2011 MAJ journalière

__Géotraitement : Réaliser un pictogramme informant qu’un élément empêche la plantation d’arbre__

*Problèmes : Manque de précision*

___

### Les arbres d’alignement 
On ne plante pas d’arbre à cet endroit.
On prend en considération la canopée de la voirie pour planter un arbre : on ne plante pas d’arbre sous la canopée. 
Tous les arbres ne sont pas intégrés à la couche EVA sur la canopé. Il s’agit alors de la compléter. 

Données disponibles : Arbres d'alignement de la Métropole de Lyon, Data Grand Lyon, 2011 MAJ mensuelles

__Géotraitement : Faire un tampon de 3m autour de la canopé et inclure aux espaces de plantation impossible__

*Problèmes : Aucuns*

## Les espaces naturels


### Les arbres
En se basant sur la charte de l’arbre, on prend en considération la canopée pour planter un nouvel arbre : on ne plante pas d’arbre sous la canopée.

Données disponibles : Canopé avec les données EVA 2015 (espaces végétaux artificialisés)

__Géotraitement : Faire un tampon de 3m autour de la canopé et inclure aux espaces de plantation impossible__

*Problèmes : La couche n’est que partiellement complète. Bien qu’elle soit exhaustive, on s’aperçoit en la comparant avec une orthophotographie que certains arbres ne sont pas pris en compte*
___

### Les prairies et espaces dégagés 
Nous prenons le parti qu’un espace de prairie peut accueillir des arbres, sans contraintes apparentes. Ainsi, ils sont de fait inclus dans la couche des possibilités de plantation.
 
Données disponibles : Couche EVA

__Géotraitement : Aucuns__

*Problèmes : Aucuns*


## Les Terrains non aménagés (terrains vagues)
Nous prenons le parti que les terrains non aménagés peuvent accueillir des arbres, sans contraintes apparentes. Ainsi, ils sont de fait inclus dans la couche des possibilités de plantation.

Données disponibles : Urban Atlas 2011, données où la variable ITEM est “Land without current use”

__Géotraitement : Aucuns__

*Problèmes : Aucuns*


***


# Le territoire urbain en sous-sol est caractérisé par ces éléments :

## Les réseaux de transport
Ce réseau est présent dans la couche des chaussées et est donc de fait exclu des potentiels de plantation.

Données disponibles : Couche PVO Chaussée Trottoirs, Data Grand Lyon, 2016 MAJ journalière

__Géotraitement : Aucuns__

*Problèmes : Aucuns*

### Les parkings souterrains

Données disponibles : Accès des parkings Lyon Parc Auto de la Métropole de Lyon, Data Grand Lyon, 2019

__Géotraitement : Réaliser un pictogramme informant qu’un élément empêche la plantation d’arbre__

*Problèmes : Manque de précision*

### Le métro
Pour le métro, nous prenons le parti de ne pas planter d’arbre sur le passage du tunnel. Bien que leur profondeur varie sur le parcour, nous n’avons pas cette information.La largeur des ballastes étant de 2,9 m sur le réseau, nous optons pour une zone  tampon de 7 m autour du tracé du tunnel.

Données disponibles : Lignes de métro et funiculaire du réseau Transports en Commun Lyonnais, Data Grand Lyon, 2019
Entrées/sorties des stations de Métro du réseau Transports en Commun Lyonnais, 2015

__Géotraitement : Création d’une zone tampon de 7 m autour du tracé à exclure des potentiels de plantation d’arbre__

*Problèmes : Aucuns*

## Les réseaux d’eau

### Les conduites d'eau

Données disponibles : DICT

__Géotraitement : Extraire les données DICT sur AutoCad, importer sous QGIS__

*Problèmes : La donnée n’est pas en format shape et demande à être retravaillée. Certaines données ne sont pas en format vecteur. La tâche est très lourde, les fichiers sont sur de petites emprise et réaliser ce travail à l’échelle d’un arrondissement demande une charge de travail trop importante*

### L’assainissement 

Données disponibles : Couche ASSCANAP, Eau du Grand Lyon

__Géotraitement : Création d’une zone tampon égale à la largeur de la canalisation__

*Problèmes : Nous ne pourrons utiliser que cette couche car les connecteurs (canalisations reliant les bâtiments) ne disposent pas de champs de largeur*

## Les réseaux de communication

### Le téléphone

Données disponibles : DICT

__Géotraitement : Extraire les données DICT sur AutoCad, importer sous QGIS__

*Problèmes : La donnée n’est pas en format shape et demande à être retravaillée. Certaines données ne sont pas en format vecteur. La tâche est très lourde, les fichiers sont sur de petites emprise et réaliser ce travail à l’échelle d’un arrondissement demande une charge de travail trop importante*

### La fibre optique

Données disponibles : DICT

__Géotraitement : Extraire les données DICT sur AutoCad, importer sous QGIS__

*Problèmes : La donnée n’est pas en format shape et demande à être retravaillée. Certaines données ne sont pas en format vecteur. La tâche est très lourde, les fichiers sont sur de petites emprise et réaliser ce travail à l’échelle d’un arrondissement demande une charge de travail trop importante*

## Les réseaux d’énergie

Données disponibles : DICT

__Géotraitement : Extraire les données DICT sur AutoCad, importer sous QGIS__

*Problèmes : La donnée n’est pas en format shape et demande à être retravaillée. Certaines données ne sont pas en format vecteur. La tâche est très lourde, les fichiers sont sur de petites emprise et réaliser ce travail à l’échelle d’un arrondissement demande une charge de travail trop importante*

### L'électricité

Données disponibles : DICT

__Géotraitement : Extraire les données DICT sur AutoCad, importer sous QGIS__

*Problèmes : La donnée n’est pas en format shape et demande à être retravaillée. Certaines données ne sont pas en format vecteur. La tâche est très lourde, les fichiers sont sur de petites emprise et réaliser ce travail à l’échelle d’un arrondissement demande une charge de travail trop importante*

### Le gaz

Données disponibles : DICT

__Géotraitement : Extraire les données DICT sur AutoCad, importer sous QGIS__

*Problèmes : La donnée n’est pas en format shape et demande à être retravaillée. Certaines données ne sont pas en format vecteur. La tâche est très lourde, les fichiers sont sur de petites emprise et réaliser ce travail à l’échelle d’un arrondissement demande une charge de travail trop importante*

***

# La règlementation

## Les espaces publics et privés

Dans le cadre de notre étude, il est intéressant de montrer les possibilités d’action des acteurs publics. Ainsi, nous cherchons à différencier le résultat final entre les espaces publics et les espaces privés. 

Données disponibles : Cadastre, cadastre.gouv, 2020

__Géotraitements : Intersection entre la couche de résultat et celle-ci en fonction des types d’espaces__

*Problèmes : Aucuns*

D’autres éléments de réglementation peuvent être intégrés dans un SIG en fonction des objectifs de l’étude et des données disponibles.


[Page précédente - II.1.iii - Tableau des données](Geonum_20_tableau_donnees)

[Page suivante - III.1 - Ajout des couches et pré-traitement](https://github.com/VCityTeam/DatAgora/wiki/Geonum_20_Pre_traitement_donnee)