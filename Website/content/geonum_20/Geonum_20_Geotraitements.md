# Application de la méthodologie et géotraitements

## 1. Création de polygones pour les couches linéaires et ponctuelles

### Couche voirie automobile

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image37.png" width ="600">

**Création d’un buffer en fonction de la largeur pour obtenir une couche polygone et non linéaire**

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image27.png" width ="600">

### Couche tramway

**Application d’un buffer constant de 2m autour de chaque voie**

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image8.png" width ="600">

### Arbres d'alignement

**Buffer de 3m autour des arbres**

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image4.png" width ="600">
<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image16.png" width ="600">


### Couche voies ferrées 

**Application d’un buffer autour des lignes**

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image39.png" width ="600">

**Ajustement manuel de la liaison entre la couche des équipements de transport (BD TOPO) et le buffer autour des lignes de voies ferrées**

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image20.png" width ="600">
<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image3.png" width ="600">

**Union des deux couches**

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image9.png" width ="600">

### Métro

**Application d’un buffer de 7m autour des lignes de métro**

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image18.png" width ="600">
<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image25.png" width ="600">

### Canalisations

**Application d’un buffer équivalent au champ “largeur” de la couche**

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image12.png" width ="600">
<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image14.png" width ="600">

***

## 2. Union des couches : Masque négatif

**Création d’un masque en regroupant les couches où il est impossible de planter des arbres**

* GEO_1 = BATI + EVA_NAT_15_AUTRES

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image7.png" width ="600">

Nous avons répété ces étapes avec les couches suivantes :

* GEO_2 = ROUTES_POLYGONES + GEO_1

* GEO_3 = VOIES_FERREES + GEO2

* GEO_4 = GEO_3 + TRAM_POLYGONES

* GEO_5 = GEO_4 + SOUTERRAINS

* GEO_6 = GEO_5 + ARBRES + TRAVAUX 

<br/>

**Regroupement des entités du masque négatif :**

**Outil “Regrouper”**

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image31.png" width ="600">
<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image5.png" width ="600">

## 3. Masque positif

**Passage du masque négatif au masque positif :**

Duplication de la couche ARRONDISSEMENT pour avoir les limites précises
Outil “Différence” avec le masque négatif

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image24.png" width ="600">
<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image41.png" width ="600">

**Passage d’une seule entité multipolygones à plusieurs entités pour la couche MASQUE POSITIF :**

Outil “De morceaux multiples à morceaux uniques”

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image34.png" width ="600">
<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image26.png" width ="600">

**Suppression manuelle du Rhône, compris dans l’arrondissement mais ne faisant pas partie du masque négatif**

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image40.png" width ="600">
<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image36.png" width ="600">

**Suppression des entités négligeables :**

Ajout d’un champ calculant la surface

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image15.png" width ="600">

Sélection en fonction de la surface, ici suppression des entités inférieures à 9m^2

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image22.png" width ="600">

Limites : Certaines entités en longueur font plus de 9m^2 mais ne peuvent pas accueillir de nouveaux arbres

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image29.png" width ="600">

***

## 4. Différence privé/public

Découpage du masque positif sur les parcelles privées du cadastre
Différence entre le masque positif et les parcelles privées du cadastre

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image2.png" width ="600">
<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image32.png" width ="600">


***

## 5. Points d'attention

Certains espaces libres ont cependant des contraintes ponctuelles qu’il est impossible de représenter sur le masque. Nous avons ainsi créé une couche de points d’attention composée des éléments suivants :

- Stations de vélos en libre-service
- Entrées de parking
- Entrées de métro
- Mobilier urbain de plus de 2m^2

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image33.png" width ="600">
<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image38.png" width ="600">

***

## 6. Ouverture : Réduction du nombre de voies automobiles

**Transformation des routes avec plus de 2 voies en routes de 2 voies pour laisser la place aux arbres**

**Sélection des routes de plus de 2 voies pour créer une couche **

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image30.png" width ="600">

**Création d’un buffer équivalent à 2 voies (6m de large)**

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image11.png" width ="600">

**Différence entre le buffer et la couche polygones des routes de 3 voies ou plus**

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image11.png" width ="600">

**Obtention d’une couche de plantation potentielle, si on décide de réduire la route à 2 voies**

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image19.png" width ="600">

**Transformation des routes de 2 voies en routes d’une voie pour laisser la place aux arbres**

Sélection des routes de 2 voies pour créer une couche 

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image10.png" width ="600">

Création d’un buffer équivalent à 1 voie (3m de large)

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image42.png" width ="600">

Différence entre le buffer et la couche polygones des routes de 2 voies

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image1.png" width ="600">

Obtention d’une couche de plantation potentielle, si on décide de réduire la route à 1 voie

<img src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/image23.png" width ="600">



[Page précédente - III.1 - Ajout des couches et pré-traitement](Geonum_20_Pre_traitement_donnee)

[Page suivante - III.3 - Couche finale](Geonum_20_Couche_finale)