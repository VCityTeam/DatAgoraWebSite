## Work in progress
- ajouter des composants disponibles (courte description et lien vers la partie code de github)

 - Liste des composants déjà développés
 - Liste des composants en cours de développement (point d'entrée pour les travaux d'étudiants).
    - [[Création de Dashboards|ECL_Dashboards]]


# Presentation des stations 

Nous proposons une variété de stations pour répondre aux besoins que nous avons rencontrés au cours de nos projets. Nous les avons développées avec nos partenaires et les avons documentées afin de fournir des instructions d'utilisation et de réplication. 
travail sur les dents).

## Stations physiques

### Présentation de maquette 
![erasme-imu](PartDieuModel/erasme-imu.png)

Le dispositif technique est composé de plusieurs éléments, à commencer par la table en son centre sur laquelle est posé la maquette. Elle est entourée d'un cadre en fer sur lequel sont fixés les différents éléments pour enrichir son utilisation : 
* un projecteur vidéo
* une caméra
* un écran de visualisation
* un écran de contrôle
* un projecteur de lumière


Collaboration avec Didier Chanfray ([LabEx IMU](https://imu.universite-lyon.fr/))

### Mur d'écrans


![Mur d'écrans](Doc_Devices/ASLAN_Device_1.jpg)

Le dispositif est composé de 4 écrans capales d'agir comme des écrans indépendants ou comme un unique écran géant. Grâce à l'environnement SAGE2, il est possible de connecter plusieurs utilisateurs sur place et à distance pour travailler simultanément dans un même espace de travail.

***

## Stations logicielles

### Legonizer
Ce module utilise Unity pour fournir un modèle 3D et des instructions de construction pour une représentation voxel d'un objet 3D personnalisé choisi par l'utilisateur.
[En savoir plus](Legonizer_module)
![](Doc/legonizer.png)

[Code Source](https://github.com/VCityTeam/UD-Legonizer)
***
### City block
Ce module analyse les données urbaines CityGML. Il rend la ville en 3D sur Unity afin que vous puissiez la visualiser. Le fichier gml est transformé en objet avec toutes les données nécessaires à la création de la ville dans la Scène. Ensuite une triangulation est faite pour construire la ville.
[En savoir plus](Unity_GML_Parser_module)

![](Doc/CityBlock.PNG)

[Code Source](https://github.com/VCityTeam/DatAgora)
***
### Mire 
Reconnaissance de rectangles bleus (Bâtiments) et transformation en 3D sur Unity. Ce module traite des images pour reconnaître sur une feuille blanche, des rectangles bleus qui simuleront des bâtiments sur un futur modèle. Ces bâtiments sont intégrés dans une vue 3D et vous pouvez vous déplacer autour.[Exemple of use case ](https://www.youtube.com/watch?v=AbVM-ZPWpCQ) <br>

[En savoir plus](Mire_module)

![](Doc/CaptureMire2.PNG)

[Code Source](https://github.com/VCityTeam/UD-Mire)
***
### Data Viewer
Un outil web pour visualiser et interagir avec des couches de données personnalisées.
[En savoir plus](Data_Viewer_Module)

![](Doc/UD-Viz_vue.png)

[Code Source](https://github.com/VCityTeam/UD-Viz)

### Développement de composants
- Lien vers le projet POM 1 : Ces trois projets son réalisés par des étudiants de l'Université Lyon 1. Ces trois projets ont pour but de fournir des briques logicielles répondant chacune à un besoin précis. La première doit permettre de parser des données GML pour obtenir un modèle 3D.

- Lien vers le projet POM 2: La seconde doit  permettre de créer à partir d'un modèle 3D une représentation en voxels.

- Lien vers le projet POM 3: Enfin, la troisième vise à reconstruire un modèle 3D dans Minecraft.

- Lien vers le projet ECL (Qualification de la donnée) : Un autre projet d'étudiants de l'Ecole Centrale de Lyon qui sert à analyser des fichiers de données pour y détecter des incomplétudes, des doublons ou certaines erreurs d'écriture. Il permet également de faire un tri des données selon des valeurs maximales et minimales, et de comparer deux fichiers de données pour relever les différences entre les deux versions.


