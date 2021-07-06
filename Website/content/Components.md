## Work in progress
- add avalaibles components (short description and link towards github code part)

 - List of already developed components
 - List of work in progress components (input point for student work).
    - [[Création de Dashboards|ECL_Dashboards]]


# Stations presentation

We propose a variety of stations to help fullfil the needs we encountered during our projects. We have developped them with our partners and documented them to provide both use and replication instructions.

## Physical stations

### Model Display 
![erasme-imu](PartDieuModel/erasme-imu.png)

The technical device is made up of several elements, starting with the table in its centre on which the model is placed. It is surrounded by an iron frame to which the various elements are attached to enrich its use: 
* a video projector
* a camera
* a display screen
* a control screen
* light projectors


Collaboration with Didier Chanfray ([LabEx IMU](https://imu.universite-lyon.fr/))

### Screenwall


![Mur d'écrans](/Doc_Devices/ASLAN_Device_1.jpg)

The device is composed of 4 screens that can act as independent screens or as a single large screen. Thanks to the SAGE2 environment, it is possible to connect several users on site and remotely to work simultaneously in the same workspace.

***

## Software stations

### Legonizer
This module uses Unity to provide a 3D model and building instructions for a voxel representation of a custom 3D object chosen by the user.

![](/Doc/legonizer.png)

[Source Code](https://github.com/VCityTeam/UD-Legonizer)
***
### City block
This module parse the urban data CityGML. It make the city in 3D on Unity so you can visualize it. The gml file is transform in object with all data needed for the creation of teh city in the Scene. Then a triangulation is make to build the city.<br>

[Learn more](Unity_GML_Parser_module)

![](/Doc/CityBlock.PNG)

[Source Code](https://github.com/VCityTeam/DatAgora)
***
### Mire 
Recognition of blue rectangles (Buildings) and transform it in 3D on Unity. This module processing images to recognize on a white paper, blue rectangles that will simulates building on a future model. This buildings are integrate in a 3D view and you can move around it.
[Exemple of use case ](https://www.youtube.com/watch?v=AbVM-ZPWpCQ) <br>

[Learn more](Mire_module)

![](/Doc/CaptureMire2.PNG)

[Source code](https://github.com/VCityTeam/UD-Mire)
***
### Data Viewer
A web tool to visualize and interact with custom data layers.

[Learn more](Data_Viewer_Module)

![](/Doc/UD-Viz_vue.png)

[Source code](https://github.com/VCityTeam/UD-Viz)

### Développement de composants
- Lien vers le projet POM 1 : Ces trois projets son réalisés par des étudiants de l'Université Lyon 1. Ces trois projets ont pour but de fournir des briques logicielles répondant chacune à un besoin précis. La première doit permettre de parser des données GML pour obtenir un modèle 3D.

- Lien vers le projet POM 2: La seconde doit  permettre de créer à partir d'un modèle 3D une représentation en voxels.

- Lien vers le projet POM 3: Enfin, la troisième vise à reconstruire un modèle 3D dans Minecraft.

- Lien vers le projet ECL (Qualification de la donnée) : Un autre projet d'étudiants de l'Ecole Centrale de Lyon qui sert à analyser des fichiers de données pour y détecter des incomplétudes, des doublons ou certaines erreurs d'écriture. Il permet également de faire un tri des données selon des valeurs maximales et minimales, et de comparer deux fichiers de données pour relever les différences entre les deux versions.


