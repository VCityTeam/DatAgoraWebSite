---
title : "White models"
---

## Introduction

White models are the simplest representation of buildings and their environments in 3D. Every modeled thing is painted white, and transparent surfaces are left empty. These are widely used in architecture for example, to showcase what a new building would look like. As for us, they serve as a 3D canvas to display data and interact with in augmented reality.

### Paperzoom
The [Paperzoom](https://www.erasme.org/paper-zoom) project ([open sources](https://github.com/urbanlab/paperzoom)).
this project aims to use a simple sheet of paper as a means of interface and wonders about the gestures that allow to navigate in the depth of information. Are these gestures simpler, more intuitive and natural than an interface
tactile? Do they make it easier to find your way around a 3-dimensional map? One of the strong points of the project is
publishing new cards: publish four images and you'll be able to will have new content. Jean-Pierre Berthet thus imagined
on this basis of many different uses: a mode of Paperzoom, a historical map of Lyon allowing you to navigate through time, a game of discoveries hidden object

<p align="center">
<img src="https://github.com/VCityTeam/DatAgora/blob/master/Pictures/StateOfArt/PaperZoom.jpg" alt="Interactive model" width="250"/>
</p>

**TECHNICAL APPARATUS** :
A camera and an infrared light are placed next to it. of a projector over a white table. A white sheet is edged in black so that it is more easily recognized by the system. The software developed in Python under Linux provides image analysis and calculates the display. The contents are simply three images that correspond to three different zoom levels.



### Interactive model with projection

This "interactive-model" project requires an equipement similar to one used by CityScope projects that is a projector, a kinect captor (instead of camera) and a physical model. The physical model displayed in the following picture features a terrain with some buildings (and other types of construction). An interface allows the user to switch between different interaction modes respectively allowing:
  - to associate a color to a type of surface,
  - to associate a custom color to a chosen surface
  - to realize some (virtual) drawings on the surface
  - to display a simulated shadow parametrized by user input
<p style="text-align:center;">
<img src="https://github.com/VCityTeam/DatAgora/blob/master/Pictures/StateOfArt/InteractiveModel.png" alt="Interactive model" width="600"/>
</p>
This type of project can only work with physical models of limited size. Nevetheless the ability to draw on the surface and/or to take geometrical measures can be a valuable type of input to some numerical models...

### Augmented model : Participatory use of the augmented city
As part of Anthropocene school, this workspace was propose by teachers and researchers in town planning, architecture, and communicatio. The aim was to reunited students of many discipline to bring a largest choice of proposal as for our link with campus or futur Learning Centre. [link](https://github.com/VCityTeam/DatAgora/blob/master/Docs/MAQUETTE%20AUGMENTEE.pdf)

The workshop was plan with 6 multidisciplinary groups
Interaction with new buildings to plan in it and be more familiar with it.
This project work in 2 phases:
- The projection on the roof of the model of each floors of the building to see his layout.
- A screen to show a 3D view of the inside.

With this two interaction this will simulate the liberty of movement in the building.
This project work with a camera on the top of the model who will catch our marker’s position. With this data the screen show the inside of the building where is placed our marker. The user is free to move the Lego everywhere and visite the building of his choice. **Technologies use** : Unity and the library OpenCV
<p style="text-align:center;">
<img src="https://github.com/VCityTeam/DatAgora/blob/master/Pictures/StateOfArt/AugmentedModel.PNG" alt="Interactive model" width="400"/>
</p>

### LabXP Confluence model
The aim of this [project](https://github.com/VCityTeam/DatAgora/blob/master/Docs/LabXP-Confluence-CompteRenduFinal.pdf) was to share Gamagora's ideas with those of students from other courses: the master MUSE (Urban Mediation, Knowledge and Expertise) and the master GeoNum (Digital Geography). The idea of this collaboration is to put the game at the service of concrete objectives and real data. The last step of the project is a 4-day hackaton to produce together concepts and technological bricks, which will take place soon.

They have proposed a temporal investigation game in which the player(s) play as a detective who has to arrest a criminal while being forced to travel. The game is built in the following way: an era, an enigma, a constraint. As far as the game's interaction mode is concerned, they have thought of a vertical displacement of the physical model that would make the city's eras evolve with different levels. By selecting the era, we select the puzzle and its constraint. The information about the puzzle is then projected on the model. Players can then interact with this information through a "slate", which is used as a magnifying glass giving more information and context. To answer the puzzle, the players use this same slate to write down the answer and present it to the kinect who will read and interpret the answer. During the course of a puzzle, the detective controlled by the players will be confronted with a constraint specific to the time. For example: following the tracks of the criminal by using only transport for people with reduced mobility, the detective being in a wheelchair in this puzzle.   In the last puzzle, players are invited to visit places of confluence that they have discovered during the adventure.  Indeed, the aim of the model is to make them discover the neighbourhood in a different way, by putting forward the model and the data in a playful way.

They realized the different problems that their proposal raised: The aim was not to make people realise that transport around the confluence was not suitable, but rather to make them think about the benefits that future work could provide.
