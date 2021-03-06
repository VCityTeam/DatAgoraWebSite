## Introduction
Cette page présente les résultats obtenus par l'algorythme de [Visions Arborée](./biophi) sur le périmètre d'étude choisi, soit 1km autour de la gare Part Dieu et une zone restreinte de celui-ci

## Calcul des isovistes
La première grand étape de l'algorithme est de calculer l'aire des isovistes de tous les capteurs sur les voiries. Ce calcul est relativement long, et après la prière fois, il a donc été décidé de le sauvegarder sous forme de shapefile sur la grand zone d'étude.


![Isovists](Isovists.png)


## Résultats à grande échelle

![TVF_big](TVF_big.png)

Vu de très haut, il peut être complexe de bien repérer les zones avec la plus faible/forte concentration d'arbres, c'est pourquoi nous nous somme tous restreint à un petit périmètre d'étude, afin de faciliter la visibilité mais aussi de pouvoir comparer tous nos indicateurs sur une même zone.

![TVF_zone](TVF_zone.png)

## Comment utiliser cet indicateur ?

Cet indicateur peut être modifié grâce aux coefficients m et p, dont l'utilisation est détaillée plus haut.
Il permet d'identifier les voies autour desquelles il y a le moins / le plus d'arbres. Ainsi, on peut lancer facilement une réflexion sur les zones à végétaliser en priorité.

Une application pratique pourrait être de calculer les parcours d'une point A à un point B avec le plus fort coefficient pour pouvoir se balader en présence de végétation.


[Page précédente - Résultats sur les toits végétalisés](Resultats-Toits)

[Page suivante - Ressources](Ressources)
