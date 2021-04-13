## Détails techniques d'implémentation
### Managers
_Les scripts "manager" sont des singletons: ils ne sont instanciés qu'une seule fois et accessibles par leur attribut static "instance". Tous les managers sont des MonoBehaviours et présent en tant que composants de l'objet "GameManager" de la scène de jeu principale._

* CameraManager: gère les deux caméras de la scène. Lorsque la caméra principale (vue du dessus) est active, la déplace et la tourne selon les interactions du joueur et permet de cliquer sur PNJ pour en prendre le contrôle. Permet aussi de switch entre les caméras avec la touche C, en désactivant une caméra et activant l'autre.

* <a name="flowsManager">FlowsManager</a>: contient les données de température, pollution et humidité. Ce script sert d'intermédiaire à toutes les modifications/obtentions de ces données (getters et setters) et appelle les méthodes de l'[UIManager](#uiManager) permettant de les mettre à jour.

* <a name="moneyManager">MoneyManager</a>: gère l'argent dépensé et les coûts des plantes. L'argent dépensé augmente quand une plante est posée et quand un nouveau jour commence. Le coût quotidien augmente en fonction du coût d'entretien journaliers des plantes placées. Sert d'intermédiaire à toutes les dépenses et augmentations/diminutions des coûts.

* TimeManager: gère l'écoulement du temps dans le jeu. Actuellement, 1 journée dans le jeu dure 1 minute. Ce script fait tournée une lumière sur elle-même pour imiter un soleil et permet de faire des sauts dans le temps d'un certain nombre de jours. Au début de chaque nouveau jour, appelle la fonction du [MoneyManager](#MoneyManager) permettant de dépenser les coûts quotidiens.

* NPCManager: gère l'apparitions des PNJs humains dans la scène. Quand un PNJ apparait, lui assigne un chemin à suivre. Permet aussi de prendre ou perdre le contrôle d'un PNJ.

* <a name="uiManager">UIManager</a>: gère toute l'interface utilisateur du jeu. Met à jour les affichages des données et cache/affiche les panneaux selon les intéractions du joueur. Sert d'intermédiaire pour toute mise à jour des affichages et est le seul script à connaître les éléments de l'UI.

* TreeManager: permet d'ajouter et supprimer des plantes dans la scène. Transmet la plante à [dragAndDrop](#dragAndDrop) lors d'un clic sur un bouton du panneaux des plantes (Spawn) et appelle les managers adéquats une fois placée ([MoneyManager](#MoneyManager) pour les coûts et [GridManager](#gridManager) pour la grille). Fournit aussi à l'[UIManager](#uiManager) les données à afficher quand l'utilisateur clique sur une plante dans la scène.

* <a name="gridManager">GridManager</a>: gère une grille abstraite paramètrable. Cette grille doit couvrir horizontalement toute la scène de jeu pour fonctionner correctement. Chaque case de la grille possède des coordonnées en X et Z. Quand une plante est placée, celle-ci est ajouté à la case la contenant. Pour cela, la position de la plante (Vector3) est transformé en coordonnées x,z et arrondie à la position de la case la plus proche. Un dictionnaire <x,z , box> permet de retrouver instantanément la bonne case et la plante est ajouté à cette case. Calcule les températures, pollutions et humidités en fonction des données de toutes les cases et les envoit au [FlowsManager](#flowsManager).

* <a name="dragAndDrop">DragAndDrop</a>: gère le placement des plantes. Quand une plante est instantiée (par un clic sur un bouton), celle-ci suit la souris du joueur. La position de la souris étant calculée avec des raycasts, la plante ne suit la souris que sur les éléments avec un collider. Quand le joueur clique sur une zone valide (une zone avec un tag "floor" et un collider), la plante est placée au sol à l'aide d'un raycast, à conditions qu'aucune plante incompatible ne s'interpose. De plus, la couleur de la plante est changée entre rouge et bleu si la position est respectivement invalide ou valide, ceci en appliquant un matériau particulier. Dans le cas de l'herbe, la zone d'herbe placée lors du clic prend la taille de la surface sur laquelle elle est appliquée.

[Page précédente - III - Modèles](Modeles)

[Page suivante - IV.2 - Autres scripts](Scripts)