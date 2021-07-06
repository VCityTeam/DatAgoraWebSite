# Open position of Engineer in the DatAgora Project
  * Political, economic or social decision-making must increasingly be based on data while mobilizing an interdisciplinary approach. While the volume of data remains a challenge (large data sets), the multi-source nature is also important in finding the right data set, combining it with existing data and enriching it with domain-specific modeling and learning. The DatAgora project aims here at experimenting new modalities of interaction, understanding and decision support around data. This project is led by researchers from the University of Lyon (LabEx Aslan, LabEx IMU, Laboratoires ICAR, LIRIS, ...) in strong partnership with the metropolis of Lyon (Erasme Urban Lab, Data Service, business services, ...).
  * [link (in french)](UCBL_DatAgora_Profil_IGE_v4.pdf)

# Student projects (in French, but internship are also possible (French or English spoken)

## Contact
Contact : Gilles Gesquière, Corentin Gautier (gilles.gesquiere@liris.cnrs.fr, corentin.gautier@liris.cnrs.fr)
Laboratoire : LIRIS CNRS UMR 5205, campus de la Doua, Bâtiment Nautibus

## Contexte
DatAgora est un projet financé par l’IDEX dans le cadre de l’appel à projet "IA et donnée". Ici, nous mobilisons les données dans des processus d’aide à la décision, qui nécessitent une compréhension et une contextualisation préalables. A court terme, en collaboration avec la métropole de Lyon, nous voulons créer un nouveau lieu de rencontre local autour des données. Les dispositifs que nous choisissons de mettre en place doivent être peu coûteux et ainsi peuvent être facilement dupliqués en plusieurs endroits, et installés rapidement de manière simple. Tout ceci, combiné à une pratique de documentation en continu, a conduit à la création d’un site web dédié regroupant toutes les informations qui ont pu être produites dans le cadre du projet DatAgora.

<p float="left">
<img src="/PartDieuModel/Model1.jpg" alt="Home" width="400"/>
<img src="/PartDieuModel/Model2.jpg" alt="Home" width="400"/>
</p>

## Projets autour de DatAgora
Ces projets sont proposés au sein de master 1 en informatique de L'université Claude Bernard. Néanmoins, des stages restent possibles sur des sujets connexes. 

1.  **MIRE** 
Contexte : Maquette Légo de la ville de Lyon, avec une caméra placé en amont de celle-ci
Domaine : traitement d'image et de vidéo

Missions : 
   * Capter des éléments sur la maquette de couleurs ou formes spécifiques afin de proposer des éléments d'interactions avec. 
Par exemple : capter la présence d'un légo et avoir la possibilité de mettre à jour une base d'information (coordonnées, orientations etc...). 
   * Possibilité de construire des dashboard qui pourront relater des légo (en fonction du nombre et de leur couleur).
   * Interaction avec le geste: capter des mouvements d'un utilisateur sous la caméra afin de lancer des actions (ex : modification des données affichées).

Si les étudiants ont assez de temps : capter le nombres de personnes autour de la maquette (humains) afin d'étudier leur posture (qui est face à qui , éventuellement qui regarde quoi). Il y a donc la possibilité d'utiliser pour ce point plusieurs caméras. Ce dispositif permettrait d'enregistrer tout les échanges qu'il peut y avoir autour de cette maquette afin d'avoir une trace des discussions.

2. **Legonizer** :
Contexte : Construction d'une maquette légo à partir de données géospatiales 3D
Domaine : 3D, modélisation géométrique, rendu 
Récupérer de la donnée géographique pour la transformer en représentations en légo. 
Ref : [legonizer](https://github.com/VCityTeam/UD-Legonizer)
    * Parser XML
    * Polygonalisation de la donnée
    * Lancer de rayon
    * Optimisation du placement des légo
    * Sortie en fiche de montage type CSV

3. **Module d'intéraction en réseau avec la maquette de Lyon** :
Contexte : interaction multi-acteurs/ multi-joueurs sur des scènes 3D distribuées
Domaine : réseau, jeux vidéo

Aujourd'hui, nous disposons de différentes maquettes de Part Dieu : La première est en légo et il est possible de projeter des données dessus. La deuxième est dans un environnement web et est développé en WebGL. La troisième est développée en Unity. L'objectif est de mettre en place un dispositif permettant de relier ces trois maquettes. Les utilisateurs pourront interagir chacun de leur coté avec les maquettes. En fonction des changement effectués sur la partie web ou Unity, cela alimentera par exemple dynamiquement la maquette tangible avec la projection effectuée sur celle-ci. 

4. **La ville en Minecraft** :
Contexte : Représenter la ville dans des moteurs de jeux
Domaine : Jeux vidéo, gestion de données
A partir des données XML de la ville 3D Lyon que nous pouvons retrouver sur [Data Grand Lyon](https://data.grandlyon.com/) les étudiants devront créer une map Minecraft à l'aide de ces données. L'objectif est de pouvoir représenter, grâce à ces données des mondes de grande dimension.


5. **Environnement cartographique 3D** :
Contexte : Enrichissement de données 3D à l'aide de données 2D. Lien Cartographie - Maquette 3D en WEBGL
Domaine : 3D, modélisation géométrique, développement Webn WebGL
Développement d'un lien entre données 3D de la ville et données vectorielles
   * mapping de données 2D vectorielles sur la carte 3D
   * mise en 3D d'éléments de cartographie (ex: mettre une épaisseur, voire une texture, ...) sur les éléments (ex: route)
   * polylignes (routes) voir ci dessus
   * points : possibilité d'apporter plusieurs représentations pour une localisation données (billboard, icone, élément 3D symbolisé ou non) : par exemple arbre
   * Surfaces : possibilité de proposer des objets 3D placés dans un polygone donné (ex : arbres)





