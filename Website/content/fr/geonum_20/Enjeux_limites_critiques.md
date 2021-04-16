# Les limites de notre étude et ses pistes d’améliorations

Notre démarche de prospection de potentiel de plantation d’arbres présente des limites sur plusieurs aspects que nous aborderons point par point.

## Les données 

Comme nous l’avons détaillé dans notre méthodologie, nous avons été confrontés au décalage entre nos attentes et la réalité, en matière de données disponibles. 

Outre le fait que certaines données étaient incomplètes (les limites de voirie ; la canopée de la couche EVA ; etc.), d’autres n’existaient pas. Nous pouvons citer ici les espaces de stationnement en surface, ou encore la fréquentation journalière des rues. Nous pensions également pouvoir reconstruire la ville en géométrie de polygones, à l’image des bâtiments, mais pour l’ensemble de la voirie. Force était de constater que cela n’est pour l’instant pas réalisable avec les données en Open Source. 

De plus, nous nous sommes rendus compte que les données avaient souvent une géométrie imprécise, par rapport à l’Orthophoto 2018, ce qui a nécessité de nombreux pré-traitements des couches initiales. Certaines même, présentent un tel niveau d'imprécision qu'elles ne sont pas exploitables, ce qui est le cas pour la géométrie des trottoirs.

Nous nous sommes également heurtés au problème de la disponibilité de certaines données, de par leur sensibilité (réseau d'adduction d’eau) et leur coût (DICT). 

Enfin, notre travail aurait pu être enrichi grâce à la manne d'informations que fournissent les DICT, concernant l’occupation de l’espace souterrain. Le niveau de précision de ces données est assez fin, peut-être trop pour notre étude, mais c’est surtout les difficultés de transfert vers un logiciel SIG qui posent un problème d’utilisation de ces dernières. 

<br/>

## Les dimensions et hypothèses du projet

A l’origine du projet, nous avons été confrontés à notre manque de connaissances sur les facteurs décisionnels des plantations d’arbres. La prise en compte de toutes leurs dimensions nous a semblé dépasser le simple cadre géographique et spatial (santé de l’arbre, juridiction). De même, les pistes autour des éléments climatiques et de la réglementation n’ont pas ou peu été abordées dans ce sujet, par manque de données spatiales notamment. 

Nous avons donc dû faire des choix, comme celui de ne pas planter sur le bâti ou encore de traiter la problématique avec une approche 2D (rester en surface).
Aussi, cette approche à petite échelle est-elle pertinente ? Aujourd’hui, les réflexions sur la localisation de plantation d’arbres se font lors de projets urbains, sur des zones plus réduites, pensées de manière paysagère, où les éléments techniques peuvent être davantage intégrés. 

**Est-il possible de s'affranchir des morphologies urbaines, des besoins concrets et concertés des usagers de la ville, lorsqu'il s'agit de dégager des zones potentielles de végétalisation ?**

<br/>

## La zone d’étude 

Concernant la zone d’étude, nous avons été surpris par le choix de la Part-Dieu, car le quartier est en pleine évolution, change de semaine en semaine. Les données collectées ne sont plus en phase avec ce qu’est aujourd’hui et ce que sera demain le quartier. Les espaces disponibles sur le masque le seront-ils dans quelques années ? Nous avons peu de visibilité sur la faisabilité réelle de nos propositions.

<br/>

## Limites techniques

La dimension temporelle de la donnée : au début, nous n’avions pas connaissance des flux WFS/WMS du DataGrandLyon, de ce fait, nous étions confrontés au problème de l’évolution de la donnée dans le temps, ce qui nous obligeait à mettre à jour nos géotraitements, et nous a fait perdre du temps. 

Aussi, nous avons été confrontés à la difficulté de croiser notre approche méthodologique (liée à la réponse aux problématiques) avec notre approche technique (comment aboutir à une réponse avec les données dont nous disposons). Ces deux approches demandent d’être en permanence comparées pour que nos géotraitements soient en lien avec le sujet et que notre mode de réponse soit réalisable avec la donnée. 

<br/>

## Limites d’interprétation

Notre masque final pose la question des espaces privés. Ils représentent une grande partie de ce dernier et c’est un domaine de la ville sur lequel la Métropole ne dispose que de peu de moyens pour agir sur ces espaces.

<br/>

Aussi, le contexte actuel de crise sanitaire ne nous a pas permis de confronter les résultats au terrain. 


Enfin, ce projet nous a permis de travailler sur une problématique actuelle, suscitant un fort intérêt de notre part. C’est également un projet pluridisciplinaire, qui nous a beaucoup appris, notamment autour des enjeux de la donnée et nous avons pu prendre en main un nouvel outil, Github.

[Page précédente - IV.1 - Interprétation](Interpretation_resultats)

[Page suivante - IV.2.ii - Inclure la variable Z](Variable_Z)