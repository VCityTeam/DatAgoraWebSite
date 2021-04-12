# Legonizer

This tool aims to provide all the necessary functions to convert a 3D object into a voxel model, and to provide customized building instructions to the user. The module is based on a school project you can find [here](https://github.com/antoinechedin/lego-city-counter) developped by Antoine CHEDIN & Rendy LATBI during the [GAMAGORA](https://icom.univ-lyon2.fr/gamagora) formation. The module is currently a small Unity project, that allows you, in a dedicated scene, to :
## 1. Import a 3D model in the software : 
You can import a custom 3D model of a city in Unity (in obj or fbx format for example), or parse one from data you have in another format (ex : JSON or GML). You can drag and drop this model in a scene where the analyzer is to proceed to the next step.

## 2. Select the area you need : 
In the scene, you can move both your model and the analyzer to precisely select the area you want to model. You can edit various parameters to fit your needs : your lego area available, scale parameters to adjust to the desired area, vertical height multiplicator to adjust the height of the model...

## 3. Visualize the lego model appearance in the scene.
Once you have set up the analyzer, you can export a JSON file that you can use to visualize in the same scene the future appearance of your lego model. By choosing the file in the voxel generator script inspector, you can create a 3D model that shows what the real model will look like.

## 4. Export building instructions that suits your lego tiles.
When you are satisfied with the appearence of your model, you can export csv instructions to build the real one. You can adjust the file size to fit the dimensions of your lego tiles, and you will generate several numbered files that describe the height of lego needed for each pin.


# Download & Instructions

You can download this module [here](https://github.com/VCityTeam/DatAgora/tree/master/Lego-city-counter).
You will find detailled instructions to help you use the project and get results easily.