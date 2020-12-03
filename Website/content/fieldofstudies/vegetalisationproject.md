---
title : "Vegetalisation project"
---

## Introduction
 <img align="right" src="https://github.com/VCityTeam/DatAgora/blob/master/Pictures/PartDieuModel/erasme-imu.png" width="500">
Part-Dieu is a central neighbourhood in the cultural and economical life of Lyon. It is the central transport node of the city, making it a crucial point of interest to a european scale. Furthermore, it is the most important financial district in France, outside of the capital. Considering Part-Dieu importance for the future development of Lyon and France, every aspect of it, every future change has to be carefully studied and planed to ensure that it's prosperity remains top notched.

## Problematic

The project is in collaboration with ["Le Plan Canopé"](https://blogs.grandlyon.com/developpementdurable/en-actions/dispositifs-partenariaux/plan-canopee-larbre-au-service-du-climat-urbain/), which aims to plant + 300,000 trees by 2020 in the metropolis of Lyon.
Our goal is to show the effects of vegetalization on the city to raise awareness among elected officials or citizens in the fight against heat islands for example.

Our problem is to know where to plant these trees so that they are the most effective and non-binding ?

Partenairing with also with [Erasme](https://www.erasme.org/), which help us to install a model as well as to collaborate with the Canopé plan to collect a maximum of Urban data that could be useful for a projection on the model and then visualize the parts of the city most suitable for the greening of Lyon.

## Modules used
 * Already in use
   * [CityGML](https://github.com/VCityTeam/DatAgora/tree/master/CityGML) : Parser GML, we take the 3 rd arrondissement, more precisely the Part dieu district
   * [Lego City Counter](https://github.com/VCityTeam/DatAgora/tree/master/Lego-city-counter) : Help us to create the model in lego, with raycast that we throw on the 3r arrondissement CityGML and create a excel file wich is a simple matrix with the height on the coordinate x, y
   * [City recognition](https://github.com/VCityTeam/DatAgora/tree/master/RecognitionCity)
   * [UD-VIZ](http://rict2.liris.cnrs.fr/UD-Viz/UD-Viz-Core/examples/DemoFull/Demo.html)
* In process
  * Providing a tangible table (to facilitate the interaction between stakeholder and help possible decisions)
  * Providing necessary data crossing and geoprocess to uderstand the possible place of vegetation in public and private space)
  * Studying possible use of gamification in the topic of vegetation and urban spaces.

## Features
We downloaded the open data of the [3rd arrondissement](https://data.grandlyon.com/jeux-de-donnees/maquette-3d-texturee-lyon-3e-arrondissement-metropole-lyon/info) of Lyon in GML file. Then with the module [CityGML](https://github.com/VCityTeam/DatAgora/tree/master/CityGML) we integrate this data in Unity to visualize it.

<p float="left">
<img src="https://github.com/VCityTeam/DatAgora/blob/master/Pictures/PartDieuModel/Model1.jpg" alt="Home" width="400"/>
<img src="https://github.com/VCityTeam/DatAgora/blob/master/Pictures/PartDieuModel/Model2.jpg" alt="Home" width="400"/>
</p>

During the first use of these modules we have prototyped different models by changing the scale of the city legolizer to find the best compromise between the available space and the level of detail of the lego model to recognize the neighborhood and then be able to place green legos to simulate trees and be recognizable by the camera for the "recognition" module.

### Tested scales
**Test 1**
 <img align="right" src="https://github.com/VCityTeam/DatAgora/blob/master/Pictures/PartDieuModel/Model3.jpg" width="200">
**Param legolizer** : Scale 10 , Height : 70
**Scale** : first test = 560m x 823m real space selected, build with 6 plates which corresponds to 96 x 64 lego picks<br>
**Total of lego used** : approx 2266 <br>
**table size** : 1.20 m x 0.80 m <br>
**position of ud-viz to project** : position 1844541.5125500986 5174923.301636847 1976.2021900179093<br>
                    quaternion : 0 0 0 1<br>


**Test 2**
 <img align="right" src="https://github.com/VCityTeam/DatAgora/blob/master/Pictures/PartDieuModel/SansProjection.jpg" width="200">
**Param legolizer** : Scale 5 , Height : 100 <br>
**Scale** : 590 m x 485 m real space selected, build with 12 plates which corresponds to 128 x 96 lego picks<br>
**Total of lego used** : approx 2731 <br>
**table size** : 1.20 m x 0.80 m <br>
**position of ud-viz to project** : <br>

## Illustrations
[Illustrations sources](https://github.com/VCityTeam/DatAgora/blob/master/Docs/Mockup_Part%20Dieu.pdf)<br>


{ $paramCount := len .Params }}
{{ if gt $paramCount 0 }}
<div class="pure-g">
{{ range $param := .Params }}
  {{ $items := split $param "|" }}
  {{ $itemCount := len $items }}
  <!-- Item count must be at least 2 as
  "class" and "src" must be specified -->
  {{ if ge $itemCount 2 }}
  <div class="{{ index $items 0 }}">
    <div style="padding: 0 .2em">
      <img
        class="pure-img-responsive"
        src="/fieldofstudies/FiveImage.png"
    </div>
  </div>
  {{ end }}
{{ end }}
</div>
{{ end }}

<p float="left">
<img src="https://github.com/VCityTeam/DatAgora/blob/master/Pictures/PartDieuModel/FristImage.png" alt="Home" width="350"/>
<img src="https://github.com/VCityTeam/DatAgora/blob/master/Pictures/PartDieuModel/SndImage.png" alt="Home" width="350"/>
<img src="https://github.com/VCityTeam/DatAgora/blob/master/Pictures/PartDieuModel/TrdImage.png" alt="Home" width="350"/>
<img src="https://github.com/VCityTeam/DatAgora/blob/master/Pictures/PartDieuModel/FrthImage.png" alt="Home" width="350"/>
<img src="https://github.com/VCityTeam/DatAgora/blob/master/Pictures/PartDieuModel/FiveImage.png" alt="Home" width="350"/>
<img src="https://github.com/VCityTeam/DatAgora/blob/master/Pictures/PartDieuModel/SixImage.png" alt="Home" width="350"/>
</p>

_a sketch of a possible installation for the model_

## Partners
<p float="left">
  <a href="https://met.grandlyon.com/data-grandlyon/"><img src="https://github.com/VCityTeam/DatAgora/blob/master/Pictures/Partners/DINSI.jpeg" width="250" /></a>
  <a href="https://www.erasme.org/-UrbanLab"><img src="https://github.com/VCityTeam/DatAgora/blob/master/Pictures/Partners/Eramse.jpg" width="200" /></a>
</p>
