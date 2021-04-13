### PNJ
* ControllableNPC: script assigné aux personnages contrôlables. Quand le joueur prend le contrôle d'un PNJ possédant ce script, il peut le diriger et tourner sa vue selon ses intéractions.

* PathFollower: script assigné à toutes les entités suivant des chemins prédéfinis (courbes de Bézier). Il existe deux types de "path follower": ceux avec arrêts et ceux sans arrêt. Ceux avec arrêts (les bus) s'arrêtent quand ils passent devant un arrêt de bus ou s'ils sont sur le point d'entrer en collision avec un autre bus. Ceux sans arrêt (les PNJ) avancent jusqu'à leur destruction (celle-ci à une chance d'arriver chaque fois qu'ils finissent un tour de leur chemin). Seul le PNJ controllé ne suit plus son chemin.

### Plantes
* <a name="treeBehaviour">TreeBehaviour</a>: script assigné à toutes les plantes. Utilisé seulement pour activer/désactiver les colliders de la plante.

* Tree: contient les attributs d'une plante: nom de l'espèce, description, coût et coût d'entretien. Ce script hérite de "ScriptableObject" et est ajouté comme attribut aux TreeBehaviour.
### Autres
* <a name="gridBox">GridBox</a>: contient toutes les plantes que lui passe le GridManager. Possède ses propres valeurs d'humidité, pollution et températures, mises à jour quand une plante est ajoutée ou supprimée de la case. Une moyenne des données de toutes les cases est calculé par le GridManager pour obtenir des valeurs globales à la scène.

* MainMenu: gère toutes les intéractions du menu principal: vérifier les entrées de l'utilisateur et les envoyer au FlowsManager ou au MoneyManager, et lancer la scène de jeu.
*Work in progress*

[Page précédente - IV.1 - Managers](Managers)

[Page suivante - V - Autres assets](Assets)
