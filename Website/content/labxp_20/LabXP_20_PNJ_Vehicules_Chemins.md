### Personnages non joueur, véhicules et chemins

Des personnages non joueurs se déplacent dans la scène en suivant l'un des chemins prédéterminés. Quand le PNJ apparaît, il choisi aléatoirement un chemin à suivre parmi une liste de chemins possibles. Il suivra ce chemin en boucle jusqu'à la destruction du personnage. Seul le PNJ contrôlé par le joueur cesse de suivre son chemin, mais il retourne le suivre si le joueur prend le contrôle d'un autre PNJ.
De nouveaux PNJ apparaissent de manière aléatoire au cours de la simulation. Ils possèdent des vitesses différentes et suivent leur chemin avec un léger décalage sur la gauche ou la droite. De plus, chaque PNJ a une chance d'être détruit quand il a accompli une boucle entière sur son chemin. Seul le personnage contrôlé par le joueur ne peut pas être détruit.

![Paths](https://github.com/VCityTeam/DatAgora/blob/master/Pictures/Img_LabXP_20/Paths.PNG)

Des bus TCL sont aussi présents dans la scène et suivent un chemin prédéfini. Des arrêts sont placés régulièrement au long du chemin. Quand un bus passe devant l'un de ces arrêts, il s'arrête pour un court instant. Les bus ne sont pas contrôlables par le joueur et il n'est pas possible de voir depuis le "point de vue" du bus.

![Bus](https://github.com/VCityTeam/DatAgora/blob/master/Pictures/Img_LabXP_20/Bus.png)

Les chemins sont des courbes de Bézier. Ils peuvent être édités dans Unity, il est aussi possible d'en créer des nouveaux. Chaque chemin boucle sur lui-même<sup>2</sup>. Les chemins ne peuvent pas être modifiés en cours de simulation. Les PNJ et véhicules possèdent un script les faisant suivre la courbe du chemin choisi à une vitesse paramétrable.  

<sup>2</sup>: _Les chemins ne sont pas forcément fermés. Un PNJ ou un véhicule retournera à la position de départ du chemin quand il arrive à la position d'arrivée, même si ces deux positions ne sont pas directement connectées._

[Page précédente - II.1 - Caméras](LabXP_20_Cameras)

[Page suivante - II.3 - Plantes et placement](LabXP_20_Plantes)