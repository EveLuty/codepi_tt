#README - Tianyu LU

###*Pas encore fini : 
-	filter (AJAX)
-	validation de input dans FORM
-	CSS à evoluer afin de adapter tous les devices
-	évoluer les code à adapter aux tous les navigateur(maintenant il performer mieux dans Chrome)
-	completer le système de login et l'espace d'administration
-	ajouter les notification permet de indiquer les résulter des évènement depuis client.

###*Note
- il performer dans le navigateur Chrome
- Google Key que vous m'a donnée, ça march pas chez moi, donc j'ai utilisé un autre, vous pouvez le remplir.
- pour la partie AJAX, je peux finir dans une demi-journné si vous souhaitez. 
- Tous les autre fonctions marchent bien chez mon serveur, si vous rencontrera quelque problème, n'haitez pas me dites.
-	dans la BD, j'ai ajouter une champ dans la table 'Concert' en tant que l'identification pour l'instantce.

-	dans le dossier 'resources/assets/images/' il y a un image avoir mal nom : 'bassnectar08' doit corriger --> 'bassnectar8'
-	css, js, fw etc sont stocker dans le dossier 'public/assets/', aussi backup dans le dossier 'resources/assets/'	

-	pour faire voir ce site web, n'oublie pas configuer le ficher .env etc chez vous.


###plan du projet

-	13/11 - 14/11 : apprendre les FW Laravel et autre outils pour ce teste
-	14/11 16h -- 16/11 23h59 (1j8h) : implementer les site web
-	17/11 00h -- 17/11 00h15 : écrire README et prêt à push au GitHub.
-	END


	
	
##Les mission acompliées
 
###1.Page d'accueil
-	Pour chaque concert, les vignettes devront être recardées de manière à ne pas être écrasées et conserver sa de l'image.

###2.Page de détails

deux colone :
	
-	première colonne : l'information de l'artiste	
	-	nom	
	-	image de couverture	
	-	description	
	-	vidéo par API YOUTUBE	
-	seconde colonne : détail de l'évènement	
	-	date	
	-	nom du lieu	
	-	addresse	
	-	ville	
	-	carte GOOGLE MAP par API GOOGLE MAP	

###Page Administration
#####intro
-	une interface simple permet de	
	-	ajouter
	-	modifier
	-	supprimer 
	des concerts dans BD
	
###3.Page de login
-	login par	
	-	E-mail : user@codepi.com
	-	Password : pwd2015
	
###4.Page d'accueil de l'administration
-	simple liste des concerts existants	
	-	une pagination suffira à la navigation	
	- 	pas besoin de filtres ou des tris	
	-	pouvoir créer, éditer et supprimer des concerts(button)	
	
###5.Page d'édition de concert
-	réaliser les fonctions :
	-	créer
	-	modifier 
	-	confirmation de supprimer
	des concerts
	

##BD
-	importer les données dans les fichiers CSV
-	créer d'API permet de manipuler les données
-	tous les script d'imports devront utilisés depuis la ligne de commande
-	préférence l'outil courants pour Laravel

####L'import des données
-	ne pas générer de doublons
-	ne génèrent pas d'erreur au niveau de la navigation du site.

####La synchronisation des données
-	récupérer les vidéo associées aux artistes des concerts.
-	afficher le premier résultat

####Les cates Google Maps
-	disposez dans les fichiers CSVs de toutes les informations nécessaires à la localistation de l'endroit où ils ont lieu.	 
-	notez que tous les concerts sont en France
-	par API Google Map

####API Key Google
	AIzaSyD0HX0kSeMKR_QWBYx-HE-6Wui9zL66ePU
	remplie par 
	AIzaSyC8VMMvjIxZ-BQybv-EK2dwEnuF9uo_V1w
	



#END