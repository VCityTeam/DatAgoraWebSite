## Données et traitements réalisés
Cette page reprend les données utilisées ainsi que les traitements effectués.


  * Fond de carte (Ortho 2018 8CM)

<p float="center">
<img src="Doc/Technical_Documentation/QGis/QGis_Ortho_2018.png" alt="Home" width="400"/>
</p>

  * Espace Végétalisés et Artificialisés (2015). Cette couche contient des informations sur la taille de la végétation (à compléter)
  * Couche EVA2015_3STR : La végétation

<p float="center">
<img src="Doc/Technical_Documentation/QGis/QGis_EVA_Vegetation_2015.png" alt="Home" width="400"/>
</p>

  * Couche EVA2015_Artif_sols_nus : la partie artificielle (potentiel végétalisable)

<p float="center">
<img src="Doc/Technical_Documentation/QGis/QGis_EVA_Vegetation_et_Artif_2015.png" alt="Home" width="400"/>
</p>

  * Couche Cadastre cadbatiment

<p float="center">
<img src="Doc/Technical_Documentation/QGis/QGis_Cadastre_Batiment.png" alt="Home" width="400"/>
</p>

  * ms:pvo_patrimoine_voirie.pvochausseetrottoir : chaussée et trottoirs - création d'un buffer dépendant du champs largeurroute : couche pvo_ChausseeTrottoir_Buffer_LargeurRoute


<p float="center">
<img src="Doc/Technical_Documentation/QGis/QGis_Chaussee_Rails.png" alt="Home" width="400"/>
<img src="Doc/Technical_Documentation/QGis/QGis_Chaussee_Rails_Buffer.png" alt="Home" width="400"/>
</p>

  * ms:abr_arbres_alignement.abrarbre : Arbres d'alignements déjà compris dans EVA 2015
  * ms:com_donnees_communales.comparcjardin_1_0_0 : parcs et jardins : déjà compris dans EVA 2015
  * Pourcentage de végétation à l'IRIS

<p float="center">
<img src="Doc/Technical_Documentation/QGis/QGis_Couche_EVA_2015_IRIs_Vegetation.png" alt="Home" width="400"/>
<img src="Doc/Technical_Documentation/QGis/QGis_Pourcentage_Vegetation_IRIS_Selectionne.png" alt="Home" width="400"/>
</p>

  * Calcul du masque de plantabilité
    * Remarque : Le calcul est inexact car il y aurait des géométries invalides dans la couche EVA2015 ou Cadastrebatiment. 
  * Le premier traitement consiste à soustraire des sols artificialisés les bâtiments.

<p float="center">
<img src="Doc/Technical_Documentation/QGis/QGis_Soustraction_EVA_Artif_Batiment.png" alt="Home" width="600"/>
</p>

  * Enlever les éléments liés à la sncf (gares, voies, ...)

<p float="center">
<img src="Doc/Technical_Documentation/QGis/QGis_Soustraction_EVA_Artif_2_Rails.png" alt="Home" width="600"/>
</p>

  * on enlève ensuite le buffer correspond aux routes

<p float="center">
<img src="Doc/Technical_Documentation/QGis/QGis_Soustraction_EVA_Artif_3_Chaussee.png" alt="Home" width="600"/>
</p>

  * on soustrait ensuite les éléments sous-terrains bufferisés

<p float="center">
<img src="Doc/Technical_Documentation/QGis/QGis_Assainissement_ASSCANAS_ASSEMPRISEOUVRAGE_Buffer.png" alt="Home" width="600"/>
</p>

# Eléments descriptifs
Sur EVA
  * arborée, pour la végétation de plus de 3 mètres de haut ( = STRATE 1)
  * arbustive, entre 1 et 3 mètres de haut (= STRATE 2)
  * herbacée, inférieure à 1m (=STRATE 3)

  


  
