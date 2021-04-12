# Résumé mémoire Barbara TOLINO

## Introduction 

**Objectif du projet :** analyse quantitative de potentiel aménagement et/ou végétalisation des toîts Nantais à partir de la BD TOPO 2D et d'une image satellite 3D. 

**Produit final :** outil automatique ou semi-automatique pour déterminer le "potentiel" d'un toît. 

## Chapitre 1 : Contexte 

**Problème :** îlots de chaleur urbains. Mais lorsque les villes sont déjà denses, il est compliqué de créer de nouvelles constructions et de développer de nouveaux espaces au sol. 

**Solution :** développer l'intéret des toîts.
On a ensuite un historique de l'utilisation des toîts (solariums fin XIXème, jardin suspendu chez Le Corbusier etc.).

**Aujourd'hui :** grand nombre de toîts inexploités, "non résolus" et souvent plats alors qu'ils possèdent un grand potentiel de vue, ensoleillement et ventilation. 
Plusieurs types d'aménagements possibles : espaces verts, de loisir, bar, restaurants, agriculture urbaine etc. 

**Nouvel enjeu :** déterminer automatiquement la forme du toît pour pouvoir analyser ses potentialités. 

### Différentes solutions existantes
Etude à Genève pour des panneaux solaires. Différents indicateurs : la surface, la pente, la luminosité, la présence d'une végétation déjà existante. 

Projet de recherche déjà mis en oeuvre à Lisbonne (Santos et al., 2016) : mesure de la couverture végétale du sol et estimation du potentiel de végétalisation du toît avec des données 3D obtenues par LIDAR. **Important de modérer les données 2D avec des données 3D**

Encore à Lisbonne (Silva et al.,Naing et al.) : analyse multi-critère avec 19 indicateurs. Objectif principal : identifier les zones prioritaires pour la végétalisation des toîts. 

### Positionnement de ce projet

1. Définir les bases d'une méthode d'analyse du potentiel de réaménagement des toîts à l'échelle de la ville. 
2. Analyse du potentiel individuellement pour chaque bâtiment par une analyse multi-critère des besoins et des avantages de ce toît. 

**Quatre étapes :**

1. Identification des toits plats
2. Repérage des exigences et besoins de la programmation choisie (végétalisation,énergétique etc.)
3. Analyse des indicateurs : quantifier les avantages et exigences de chaque toit
4. Détermination du potentiel par analyse multi-critère

**Hypothèses :**
- pas de prise en compte des critères techniques, socio-économiques, météorologiques
- uniquement toits plats et à végétaliser
- uniquement à l'intérieur de la ville de Nantes 

## Chapitre 2 : Usage multiples des toits

**Classification des toits en trois catégories** : Energétique (panneaux solaires, éoliennes...), Habité (nouveaux logements, espaces pour des commerces...) et Vert (Végétation, Agriculture, Fermes aquaponiques, Bassins etc.)

*Description des toits energétiques et habités (peu pertinent dans le cadre de notre étude)* 

### Toits verts 

**Economiquement** : alternative à la rénovation pour la gestion des eaux pluviales et la ventilation (albédo important)

Explication du fonctionnement des toits végétalisés dans l'image (lien ci-dessous) : 

[[images/struc_toit_vegetal.png]]

*Peut-être que pour nous, si on veut amener des arbres, il faudrait utiliser une toiture-jardin, donc une végatation intensive*

Autres solutions pour amener de la "verdure" en ville : serres de culture ( par exemple plantes aromatiques et fruits rouges ) ou fermes aquaponiques (culture de végétaux en symbiose avec l'élevage de poissons)

## Chapitre 3 : Méthodologie et données pour l’évaluation du potentiel de réaménagement des toits végétalisés

Choix de la zone d'étude : zone réduite car pas de logiciel libre pour la reconnaissance des toits plats et donc besoin de le faire à la main (via Google Earth). 
Identification de la pente et de la programmation du toit aussi faite à la main (est-ce que le toit est déjà végétalisé ou pas ? est-ce qu'il est occupé ?)
Toits plats situés en majorité en périphérie et pas dans le centre-ville historique. 

*explication des avantages des toits végétalisés* 

**Exigences des toits végétalisés** : 
- structure résistante (charge permanente importante + si précipitations, poids des visiteurs si besoin)
- résistance aux effets de soulevement dû au vent (parapets au moins à 500mm de distance des végétaux)
- résistance au feu (**pas plus haut que 30m, surface <300m2 quand matériau non combustible, 900m2 sinon**)
- étanchéité 
- ensoleillement (**3h de soleil nécessaires en moyenne par jour**, dépend des espèces, en dessous d'1h pas envisageable)

**Critères pris en compte pour l'étude**
- Exposition au soleil
- Efficacité thermique 
- Réduction de l'îlot de chaleur
- Surface verte visible pour l'amélioration du paysage urbain

### Méthodologie avec QGIS et Python

Utilisation de T4GS : Tools For QGIS *(équivalent de t4gpd)*

- Efficacité thermique (**ET**): calcul avec QGIS et une formule théorique (à surface de toit vert égal, la végétalisation d'un bâtiment plus haut aura une efficacité thermique plus faible)

- Réduction de l'îlot de chaleur (**RICU**): idem (beaucoup plus pertinent de créer des toits verts si ils sont regroupés, sinon peu utile)

- Surface verte visible (**SVV**): utilisation d'une aire effective moins importantes que la surface du toit (*buffer de -40cm*), utilisation du Sky View Factor (SVF) : on étudie *1 - SVF* pour savoir à quel point le toît vert est visible

- Exposition au soleil (**SUN RATIO**): étude avec un ciel clair et sans nuage, uniquement le 21ème jour de chaque mois, pour des intervalles d'une heure. On utilise alors la fonction SunshineDurationOnTopOfRoof de T4QS 

### Analyse Multi-critères 

1. Normalisation des indicateurs sur une échelle allant de 0 à 3
2. Coefficients de priorité 
3. Calcul multicritères : besoins et bénéfices (séparément)
4. Obtention du potentiel par multiplication des deux
5. Renormalisation 

Dans les tableaux ci-dessous, on a la classification des résultats des indicateurs (0 étant le moins bien, 3 le meilleur)

[[images/tableaux_resultats.png]]

On obtient alors le potentiel de la manière suivante (avec A, B et C coefficients à discuter dont la somme est 1): 

*Potentiel = SUN_RATIO(AxET + BxRICU + CxSVV)*

## Chapitre 5 : Conclusions et perspectives

**Résultats :** 50% des toits examinés pourraient être végétalisés 

**Pistes d'amélioration** : 
- Coefficients de priorité à discuter avec des professionnels du métiers
- Automatiser la détection des toits plats
- Créer de nouveaux critères ou améliorer ceux-là

[Page précédente - Ressources](VegetaLyon_Ressources)

[Page suivante - Résumé des modèles économiques pour Canopée](VegetaLyon_Resume-des-modeles-economiques-pour-Canopee)