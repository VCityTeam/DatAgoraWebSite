# Pistes non explorées

Afin d’avoir un avis critique de notre projet nous avons réfléchi à exploiter d’autres outils et méthodes dans le but d’avoir une prospection plus complète, plus juste. 

## L’exploitation de toutes les données souterraines

Dans notre méthodologie nous avons exclu le traitement des données souterraines via les DICT. Pourtant, il en existe de nombreuses, et en ville ces réseaux sont d’autant plus importants, ils représentent : les canalisations, les réseaux de gaz, les réseaux d'électricité etc..
 
Lorsqu’on plante un arbre, il est nécessaire de regarder aussi ce qu'il se passe en dessous ; les racines pouvant endommager un réseau et inversement. 
Pour exploiter les données souterraines, il s’agirait d’utiliser les DICT (Déclaration d’Intention de Commencement de Travaux) :  ces données permettent de connaître pratiquement tous les réseaux souterrains. Pour des questions de sécurité, certains jeux de données sont indisponibles et sont difficiles à se procurer car certains réseaux sont sensibles (confidentialité stricte, à protéger en cas d'attaque terroriste par exemple).

Par ailleurs, les DICT ne sont pas des jeux de données Open Source, il s’agit donc de les payer.

Enfin, les réponses des exploitants de réseaux sont envoyées au format PDF. Il est nécessaire de passer par le logiciel AutoCAD pour récupérer le format DXF, un format qui permet de vectoriser le PDF et de pouvoir importer les lignes de réseau dans un logiciel SIG par la suite (voir [les données privées](https://github.com/VCityTeam/DatAgora_Geonum_20/wiki/donnee_prive)). L’exploitation de ces données à l’échelle d’un quartier nécessite un immense travail en termes de temps. 

## L’exploitation des bâtis : façades, toits 

<img align="left" src="https://github.com/VCityTeam/DatAgora_Geonum_20/blob/main/Image/milan.png">

L’espace urbain est un espace congestionné, avec le phénomène de métropolisation, l’espace libre au sein des villes se fait de plus en plus rare. En repensant l’espace, de nouvelles villes réfléchissent à exploiter le bâti avec d’autres fonctions que celles purement résidentielles. Aujourd’hui les toits et les façades permettent de pouvoir végétaliser le bâti. Dans le futur, de plus en plus de bâtis seront exploités pour végétaliser les villes. Pour exploiter cela au travers des données et un logiciel SIG il existe des solutions, comme cet exemple d'immeuble végétalisé à Milan.

Tout d'abord, il est possible de connaître les hauteurs des toits, et à travers un travail de recherche à l’aide d'orthophotographies, il est possible d’identifier les toits permettant une bonne exploitation. Cette méthode est plutôt longue car elle nécessite un travail de recherche se faisant de bâti en bâti. 

Pour les façades, il s’agit d’un travail encore plus conséquent en identifiant les bâtiments à travers un outil StreetMap pour les identifier par la suite sur un outil SIG. Néanmoins une nouvelle solution peut être exploitée aujourd’hui, toutefois cette solution s’effectue à l’échelle d’un bâti. Avec le BIM il est possible aujourd’hui de modéliser la construction d’un bâtiment, en introduisant de la végétalisation au sein du modèle, il serait possible de savoir directement s’il est bénéfique et utile d’introniser de la végétalisation sur le bâti.

<br/>

## L’exploitation d’outils permettant la modélisation des rayonnements sur la végétalisation (approche par télédétection)
 
La télédétection permet d’avoir une autre approche des surfaces végétalisées. En effet, grâce à cet outil il est facile d'identifier les surfaces déjà végétalisées. Ensuite, l’étude du fonctionnement des surfaces terrestres implique de comprendre les mécanismes énergétiques et biophysiques qui affectent ces surfaces.  De par sa capacité d’observation synoptique à diverses échelles de temps et d’espace, la télédétection satellite et avion est un outil nécessaire et unique pour l’étude et le suivi des surfaces terrestres.

A travers ces outils il serait possible de déterminer la modélisation de notre nouvelle surface à végétaliser afin de pouvoir simuler l’influence des rayonnements sur la santé des arbres. Pour prendre un exemple concret, il serait possible de modéliser cela avec [DART](https://www.cesbio.cnrs.fr/dart/) : outil créé par le Cesbio (laboratoire de recherche). Cet outil breveté modélise le transfert radiatif dans le système Terre - Atmosphère,  du visible à l’infrarouge thermique. Il simule les images satellite/avion de capteurs passifs et actifs (Lidar), ainsi que le bilan radiatif, de tout paysage urbain et naturel . Avec cet outil il serait donc possible de connaître avec précision le bilan radiatif sur un arbre et de prévoir si les zones à exploiter sont bénéfiques pour la futur santé des arbres. 


## Reconnaître les essences d’arbres à introduire 

Lors de notre projet nous avons négligé le côté biologique de l’arbre. En ce sens, nous n’avons pas déterminé les types d’arbres qu’il serait préférable d’exploiter. Il est difficile d’intégrer ce paramètre dans la création de notre masque avec un outil SIG. Il s’agirait d’un travail à faire par la suite après validation des zones à exploiter. Pour faire ce travail, il existe de nombreuses ressources bibliographiques autour de l’arbre dans l’espace urbain. Avec la modélisation proposée par Dart, cela permettrait même de choisir un type d’essence spécifique en fonction des différents espaces suivant le bilan radiatif. 


[Page précédente - IV.2.ii - Inclure la variable Z](Geonum_20_Variable_Z)

[Page suivante - V - Visualisation des données](https://github.com/VCityTeam/DatAgora/wiki/Geonum_20_Visualisation_donnee)