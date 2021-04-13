### Grille et flux
La simulation implémente un calcul (suivant un modèle pour le moment arbitraire et approximatif) de différentes valeurs: humidité, pollution, température... Ces valeurs sont calculées à échelle locale (boite) puis globale (grille). 
#### Grille
Le scène est divisée en une multitudes de boites en suivant une grille horizontale quadrillant le quartier de Part-Dieu. La grille est définie en indiquant les positions de début et de fin du quadrillage ainsi que la taille des boites. Toutes les boites ont les mêmes dimensions. Chaque boite possède une position différente et connait la liste des plantes présentes dans sa zone.
Quand une plante est placée, elle est automatiquement ajoutée à la boite correspondante (celle couvrant l'emplacement de la plante). De même, quand une plante est supprimée, la boite correspondante la supprime de sa liste de plantes.
La grille est pour le moment invisible pour le joueur, mais dans il est prévu de pouvoir la visualiser.
#### Flux
Chacune des boites possèdent des valeurs de flux (humidité, pollution, température...) qui lui sont propres. Ces valeurs, dites locales, sont mises à jour lorsqu'une plante est ajoutée ou supprimée de la boite. Des valeurs globales sont ensuite calculées en effectuant une moyenne des valeurs de boites. Ces valeurs globales sont affichées dans l'UI et visibles par le joueur.

[Page précédente - II.3 - Plantes et placement](Plantes)

[Page suivante - II.5 - Gestion de l'argent](Argent)