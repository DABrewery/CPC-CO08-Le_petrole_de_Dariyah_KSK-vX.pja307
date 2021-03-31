/* Briefing au format sqf */

//Crédits
player createDiaryRecord ["Diary", ["Crédits", "

<font color='#ff0505'>Le pétrole de Daryiah</font color><br/><br/>

Auteur : tanin69<br/><br/>

Une mission de canards, avec LUCY et PLUTO et diverses coquineries.<br/><br/>

<font color='#ff9605'>Merci à Mystery, Sparfell, Shinriel pour les bibliothèques de GDC_Lib https://github.com/GdC-Framework/GdC_lib/

"]];


//Insertion et fin de mission
player createDiaryRecord ["Diary", ["Insertion et fin de mission", "

<font color='#82ff05'>Insertion</font color><br/>
Insertion sur un des 3 points de spawn : <marker name ='mk_spawn_3a'>au sud</marker>, <marker name ='mk_spawn_2a'>à l'est</marker> ou <marker name ='mk_spawn_1a'>à l'ouest</marker>.<br/><br/>. Zoomez suffisamment sur le marqueur d'insertion pour pouvoir choisir le point.

<font color='#82ff05'>Fin de mission</font color><br/>
Tirez-vous de là vite fait et appelez l'extraction héliportée ! (voir GDC EXTRA)<br/>

"]];


//Equipement
player createDiaryRecord ["Diary", ["Equipement", "

Equipement classique des KSK<br/><br/>

<font color='#ff8205'>Armement</font color><br/>
> HK416 avec optique x3 et silencieux pour l'équipe d'assaut<br/>
> HK417 (cal. 7.62) avec AN/PVS-10 NVS (x8 avec vision noctune) pour le tireur de précision<br/><br/>

<font color='#ff8205'>Observation et navigation</font color><br/>
> Vector 21 nite pour le CdO et l'observateur<br/>
> MicroDAGR pour le CdO, le TP et l'observateur<br/><br/>

<font color='#ff8205'>Communications</font color><br/>
> 148 pour le CdO, le TP et l'observateur<br/>
> 343 pour tous les autres<br/><br/>

<font color='#ff8205'>Caisse de matériel</font color><br/>
> Du matériel de destruction supplémentaire<br/>
> 5 AT M136 (on n'est jamais trop prudent)<br/>
> Du matériel médical<br/>
> Des munitions supplémentaires<br/>
<br/><br/>

"]];

//Intel
player createDiaryRecord ["Diary", ["Renseignements", "

<font color='#ff0505'>Installation pétrolière</font color><br/>
Sur l'installation elle-même, on compte entre 20 et 25 personnels. Il y a un bunker avec probablement une position fixe <marker name ='mrkFWPetrolStation_1_290'>à l'entrée est</marker> de l'installation<br/><br/>

Notre observateur a également repéré 3 tours de guet : une située <marker name ='marker_2'>au sud de l'installation</marker>, l'autre <marker name ='marker_1'>à l'est</marker> et la troisième <marker name ='marker_0'>à l'ouest</marker>.<br/>
Cette dernière, positionnée sur des vestiges des croisades chrétiennes, héberge une arme lourde (Kord).<br/>
Notre observateur nous apprend que les sentinelles sont équipées pour la vision de nuit et la vision de loin. Méfiance donc, vous pouvez être aperçus de loin et mettre l'opération par terre. A vous de définir la conduite à tenir par rapport à ces postes.<br/><br/>

Pour finir, il a aperçu de petites patrouilles faisant la navette entre les points de guet.<br/><br/>

<font color='#ff0505'>Garnisons</font color><br/>
> <marker name ='marker_campOpfor'>Un camp garde l'entrée du grand erg</marker>, à moins de deux kilomètres de l'objectif. Il y a 2 M113 sur ce camp, avec des groupes d'infanterie prêts à embarquer. On pense que, une fois l'alerte donnée, il leur faudra une vingtaine de minutes pour arriver sur nous.<br/><br/>

> Complètement au nord-est se trouve <marker name ='marker_airport'>un aéroport militaire</marker>. A priori, les hostiles ne disposent pas d'hélicoptère de combat sur zone, mais il est par contre fort probable qu'un UH-1 'Huey' (avec des M60 embarquées) soit disponible. A partir de l'alerte, il sera sur zone en quelques minutes.<br/><br/>

Pour faire simple, vous avez tout intérêt à rester furtifs le plus longtemps possible, voire de taper l'objectif sans vous être fait repérer. Il est en effet peu probable que vous puissiez survivre à l'assaut des M113.

"]];

//Mission
player createDiaryRecord ["Diary", ["Mission", "

Votre objectif est simple : détruire l'installation pétrolière se trouvant <marker name ='marker_objective'>à l'est du village</marker> Bir Al Huffay.<br/><br/>

Votre objectif n'est pas de neutraliser les troupes en garde sur le point, même si vous serez probablement contraints de sécuriser votre opération.

"]];

//Situation
player createDiaryRecord ["Diary", ["Situation", "

Il est midi, pour le moment le temps est parfaitement clair et on crève de chaud. Mais, en cette saison, le Sirocco se lève fréquemment dans l'après-midi. A vous de voir si vous voulez en profiter. Vous pouvez également attendre la nuit profonde ou le petit matin. Pour choisir le bon moment ou la bonne météo, faites une interaction ACE sur l'entrée de la tente se trouvant au point d'insertion.<br/><br/>

Depuis plusieurs jours, un observateur embusqué nous permet d'acquérir tous les renseignements pour que nous puissions dérouler notre opération avec une planification d'une rigueur toute germanique (voir l'onglet 'Renseignements').<br/><br/>

Nous avons également pu acheminer un peu de matériel jusqu'à notre point d'insertion (voir onglet 'Equipement').<br/><br/>


"]]; 

//Contexte
player createDiaryRecord ["Diary", ["Contexte", "

Une grande puissance du (pas si) proche orient a des visées expansionnistes. Elle occupe un territoire étranger riche en pétrole pour financer une guerre sanglante contre son propre peuple.<br/><br/>

Les puissances européennes ont décidé d'agir dans la plus grande discrétion. Cette fois-ci, c'est l'Allemagne qui s'y colle, alignant ses redoutables Kommando Spezialkräfte (KSK) face à une armée régulière au matériel ancien, mais bien entretenu.

"]];