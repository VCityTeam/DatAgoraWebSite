---
title : "Hybridation"
---
## Introduction

Hybrid models are implementing elements of the other three types to a various extent. The point of hybridation is to combine their benefits to come up with a more thourough method to aquire, compile, display and interact with data in a single project.

### CityScope
The projects of [CityScope (MIT lab)](https://www.media.mit.edu/projects/cityscope/overview/) (dedicated to solving spatial design and urban planning challenges) usually follow a dual city representation framework that uses both
   * a physical model of the city map, based on a regular grid decomposition, enabling the detection of various modules (representing building units possibly made in Lego blocks) that users can freely move around the city map
   * a digital (simulation) model that recieves the current layout of the city modules  and that computes various indicators that are in turn projected (through LED projectors) back on the physical model.

The technical constraints are as follows
  - an interactive map model where the removable city modules (blocks) must be identifiable through optical capture (e.g. a webcam analyzing bar-codes or QR-codes)
  - a software is required for scanning the resulting capture (e.g. [Rhinoceros 3D](https://en.wikipedia.org/wiki/Rhinoceros_3D)) and producing its input to the simulation engine
  - a simulation engine using e.g. [Unity (game Engine)](https://en.wikipedia.org/wiki/Unity_(game_engine)) or the [Gama platform](https://github.com/gama-platform)) or possibly [Grasshopper](https://www.grasshopper3d.com/) (together with Rhino)

### CityMatrix (CityScope)
[CityMatrix](https://www.media.mit.edu/publications/citymatrix/) is an interactive model designed by CityScope to facilitate decision making for urban planing at the neighborhood scale. The goal is to allow a non urban specialist to gain knowledge on a given neighborhood situation and to build solutions improving such a situation. CityMatrix offers an interactive physical model together with a vertical display presenting indicators summarizing and evaluation of the current situation.

<p style="text-align:center;">
<img src="https://github.com/VCityTeam/DatAgora/blob/master/Pictures/StateOfArt/CityMatrix.jpg" alt="CityIO" width="600"/>
</p>

When the physical model is interactively modified by a CityMatrix user the display will reflect in real time the new value of indicators enabling an immmediate evalution of the new situation. In some cases a CityMatrix provided AI can assist the user in discovering a more optimal solution.

The central advantage of CityMatrix lies in its interactivity and the associated display feedback that provides a more deeper  undestanding of the neighborhood situation than classic city representations. Additionaly CityMatrix can be easily customized to provide a range of problem driven abstractions through the adaptation of the displayed indicators. The display that can also display raw data or a virtual representation of the city lightens the information carried by the physical model allowing a user to focus on its problem.

### Andorra model (CityScope)
The [Andorra city model](https://www.media.mit.edu/projects/andorra-dynamic-urban-planning/overview/) was designed as the representational base allowing to study how citizens use their territory/environment. The numerical side of the model distinguished different profiles of city users (native inhabitant, worker, tourrist and their respective behaviors) that were integrated in a simulation engine. This framework allowed the understanding of various behavioral schemas as well as their impact on shaping the city. The simulation calibration was based on telecommunication data (provided by the local telecommunication company) coupled with geolocalisation on the city map. This allowed to understand some mobility patterns analyzed through the respective user profiles. Simulation could then be used in order to look for possible optimizations and/or possible city enhancement propositions.

<div align="center">
  <a href="https://www.youtube.com/watch?v=7u-YyP50XV8"><img src="https://img.youtube.com/vi/7u-YyP50XV8/0.jpg" alt="IMAGE ALT TEXT"></a>
</div>

Although the Andorra (physical) model is less interactive than the one of CityMatrix, its richness comes from the understanding of mobility patterns that it provides (out of raw data) as well as the possibilites offered by "what if" simulation scenarios.
The Andorra model should be used as the principal target for the MAM-Erasme project to aim at.

### Gadagne museum

The [museum](http://tactilestudio.co/fr/gadagne/) show the evolution of the city Lyon with new technologies like the interactive model they got. This model is a collaboration with Anamnesia, who animate the model with video mapping. This video mapping can explain at the visitor the lore of the city or he can explore it with 100 spot proposed.
