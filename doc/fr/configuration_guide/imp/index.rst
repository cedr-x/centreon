.. _impconfiguration:

=============================================
Configuration simplifiée de Centreon avec IMP
=============================================

Qu'est ce que IMP ? 
-------------------

IMP (Instant Monitoring Platform) est une solution permettant de vous faire gagner beaucoup 
de temps lors de la mise en place de votre supervision. L'objectif de IMP est de simplifier la 
mise en place de vos points de contrôle et également de réduire le temps de maintenance de votre 
plate-forme. Des plugins packagés avec des modèles près à l'emploi couplés à une documentation 
de déploiement (monitoring procedure) doit vous permettre de démarrer votre supervision au maximum 
30 minutes après l'installation du système Centreon. Tous ces packs sont maintenus par nos équipes 
et des mises à jour régulières vous permettent d'améliorer de façon continue vos contrôles.

Les plugins sont issus de Centreon Plugins dont l'éventail fonctionnel est un des plus riches du 
marché : +170 environnements couverts soit environ 2000 indicateurs de supervision vous permettent 
de déployer votre supervision rapidement et simplement. 

Vous souhaitez utiliser IMP ? Rien de plus simple. Suivez les instructions ci-dessous.

Pré-requis
----------

**1. Centreon 3.4**

Pour pouvoir utiliser Centreon IMP, vous devez installer la dernière version 3.4 de 
Centreon. Cette version intègre la dernière version de Centreon Web c'est à dire la 
version 2.8.x. 

Cette version 3.4 est installable soit en "fresh install" avec `l'ISO d'installation de Centreon <https://download.centreon.com/>`_
soit en mettant à jour votre plateforme Centreon déjà installée. Pour ces deux étapes, 
rendez-vous dans les rubriques appropriées de la documentation.

**2. Une connexion internet**

Votre serveur de supervision Centreon central, doit avoir une connexion à internet. Cette 
dernière permettra de procéder à la récupération des packs via internet afin de 
les installer sur votre système de supervision Centreon.

.. note::
    Si votre serveur de Centreon n'a pas accès directement à internet, pensez à 
    configurer un proxy pour qu'il puisse se connecter à notre site web. Cette fonctionnalité 
    est maintenant disponible depuis la version 2.8.2 de Centreon Web. Si vous n'avez pas cette 
    version, pensez à mettre à jour votre plate-forme.


Connectez votre plate-forme à Centreon 
--------------------------------------

Pour récupérer les Plugin Packs, votre système Centreon a besoin de se connecter au 
site web Centreon. Sans compte Centreon sur le site web, votre serveur pourra récupérer dans un premier 
temps 6 Plugin Packs. Si vous connectez ensuite votre système au site web Centreon en créant un compte 
gratuit, vous pourrez ensuite en récupérer 6 de plus. En souscrivant à l'offre IMP, vous aurez accès au 
catalogue entier de Plugin Packs soit à ce jour +170 environnements près à l'emploi.

+---------------+-----------------+----------------+-------------------+
|               | Without Account | Simple Account | With subscription |
+===============+=================+================+===================+
| 6 base Packs  |        x        |        x       |         x         |
+---------------+-----------------+----------------+-------------------+
| 5 added Packs |                 |        x       |         x         |
+---------------+-----------------+----------------+-------------------+
| +150 Packs    |                 |                |         x         |
+---------------+-----------------+----------------+-------------------+
|         total |    6 packs      |      11 packs  |     +170 Packs    |
+---------------+-----------------+----------------+-------------------+

Quels Plugin Packs sont disponibles à chaque niveau ?

- Plugins packs gratuits : 
    - Cisco standard (SNMP)
    - Linux (SNMP)
    - MySQL
    - Printer standard (SNMP)
    - UPS Standard (SNMP)
    - Windows (SNMP)
    - Centreon (central)
    - Centreon DB
    - Centreon Poller
    - Centreon Map
    - Centreon MBI
- Avec un compte utilisateur gratuit    : 
    - DHCP
    - DNS
    - FTP
    - HTTP
    - LDAP
- Avec une souscription : `Tous les packs du catalogue <https://documentation-fr.centreon.com/docs/plugins-packs/en/latest/catalog.html>`_.

.. note::
    Nous savons tous que 11 = 6, mais nous préférons ne pas compter les plugins 
    packs servant à superviser votre plateforme de supervision.

Pour connecter votre plate-forme au site web de Centreon, suivez les étapes décrites ci dessous : 


1. Allez créez votre compte Centreon sur le site Centreon
---------------------------------------------------------

Allez sur le site web de Centreon et rendez vous sur la page de souscription à `IMP <https://www.centreon.com/imp-subscribe/>`_. Cliquez
sur "Try it" dans la première colonne du tableau comparatif des offres.

.. image:: /_static/images/configuration/website/create_account_03.png
    :width: 1000 px
    :align: center

Créez maintenant votre compte utilisateur. Ce compte sera utile ensuite pour enregistrer votre plateforme 
auprès de Centreon afin d'avoir accès aux Plugin Packs gratuits.

.. image:: /_static/images/configuration/website/create_account_04.png
    :width: 1000 px
    :align: center

Votre compte est maintenant créé. Vous pouvez enregistrer votre plate-forme auprès de Centreon.

.. image:: /_static/images/configuration/website/create_account_05.png
    :width: 1000 px
	:align: center

2. Connectez votre plate-forme au site Centreon
-----------------------------------------------

.. note::
    Si le menu **Administration -> Extensions -> Subscription** n'est pas disponible sur votre Centreon,
    rendez-vous dans le menu **Administration -> Extensions -> Modules** et installez les modules
    suivants en cliquant sur l'icône d'installation situé à droite :
    
    * centreon-pp-manager
    * centreon-license-manager

Sur votre Centreon, allez dans le menu **Administration -> Extensions -> Subscription** et connectez-vous 
avec votre compte Centreon. Le compte à utiliser est le compte que vous avez créé sur le site web 
de Centreon (étape précédente).

.. image:: /_static/images/configuration/imp3.png
   :align: center

En cliquant sur la flèche à côté du champ "Password", vous allez effectuer la 
demande de connexion  avec le site Centreon et d'enregistrement auprès du service IMP. 
Pour rappel, la création d'un compte Centreon sur  le site web est gratuite et vous donne 
accès à 11 Plugin Packs.

.. image:: /_static/images/configuration/imp4.png
   :align: center

Vous êtes maintenant connecté ! Vous pouvez maintenant accéder aux 5 nouveaux Plugin Packs. 

.. note::
    Avec ce compte vous pouvez connecter gratuitement plusieurs plate-forme à la fois pour faire 
    vos tests.

3. Parcourez le catalogue et installez vos premiers Plugin Packs
----------------------------------------------------------------

Pour installer des Plugin Packs, cliquez sur le bouton “Setup” pour accéder 
au catalogue ou allez à la page **Configuration -> Plugin packs**.

.. image:: /_static/images/configuration/imp1.png
   :align: center

Le listing des Plugin Packs apparait. Seule une partie du catalogue peut être accessible
en fonction de votre suscription. Si votre souscription n’est plus valide ou si vous 
êtes en mode découverte de l’offre Centreon IMP (sans souscription), seule une partie
du catalogue sera accessible. Les éléments non disponibles au téléchargement seront 
alors grisés et les boutons d'installation ou de mise à jour seront alors indisponibles.

Vous pouvez effectuer des recherches grâce aux options à votre disposition :

  * Mot clé (Keyword)
  * Catégorie (Category)
  * Statut (Status)
  * Date de mise à jour du pack (Last update)

Pour accéder à la description d’un pack de supervision cliquer sur son icône.

.. image:: /_static/images/configuration/imp2.png
   :align: center

Pour installer un pack, cliquer sur l’icône d’installation.

+---------------------------------------------------+------------------------------------------------------+
|              **avant installation**               |               **après installation**                 |
+---------------------------------------------------+------------------------------------------------------+
| .. image:: /_static/images/configuration/imp5.png |  .. image:: /_static/images/configuration/imp6.png   |
+---------------------------------------------------+------------------------------------------------------+

N'oubliez pas que chaque pack nécessite également le déploiement de plugins. Dans chaque monitoring 
procédure mise à disposition avec votre pack, vous avez la liste des dépendances sous forme de rpm 
à installer pour que votre supervision puisse démarrer. 

.. note::
    Pensez à déployer tous les rpms sur chaque poller qui le nécessitent. Sinon votre supervision ne 
    pourra pas fonctionner.


4. Maintenant souscrivez !
--------------------------

Vous pouvez souscrire à l'Offre IMP selon différentes formules : sur une durée de 1 mois, 
6 mois ou 1 an. Le tarif est bien évidemment plus attractif en fonction de la durée d'engagement.

Pour souscrire, allez dans **Administration -> Extensions -> Subscription** et connectez-vous 
avec votre compte Centreon que vous avez préalablement créé sur le site web de Centreon. Procédez au 
paiement de la souscription après avoir séléctionné votre durée de souscription.

Si vous avez acheté une souscription auprès de Centreon, vous pouvez maintenant lier cette 
souscription à votre plate-forme de supervision. Pour cela, cliquez sur le bouton "Link". 

Choisissez votre souscription et cliquez sur "Link" pour valider votre choix.

.. image:: /_static/images/configuration/website/link_01.png
    :width: 1000 px
    :align: center

Confirmez que c'est réellement ce que vous souhaitez faire.

.. image:: /_static/images/configuration/website/link_02.png
    :width: 1000 px
    :align: center

Vous avez maintenant accès à tous les Plugin Packs du catalogue. Cliquer sur le bouton "install" 
pour procéder à la l'installation des Plugin Packs de votre choix. En cliquant sur ce dernier, vous allez 
être redirigé vers la page d'installation des Plugin Packs.

.. image:: /_static/images/configuration/website/link_03.png
    :width: 1000 px
    :align: center

Votre abonnement Centreon IMP permet de mettre à jour les packs de supervision en tenant compte des 
évolutions des Systèmes d’Information. Cela peut inclure des améliorations ou de nouveaux ajouts 
fonctionnels.

Si vous décidez d'arrêter votre abonnement Centreon IMP, vous ne pourrez plus avoir accès à ces 
mises à jour et aux futures améliorations. Les packs installés ne seront pour autant pas supprimés et 
resteront disponibles. Les hôtes et les points de contrôles déployés grâce aux Plugin Packs resteront 
inchangés. 

.. note::
    Si vous décidez de changer de serveur et donc de migrer votre souscription sur un nouveau serveur, 
    vous serez obligé de passer par le service client. Nous n'avons pas encore intégré à nos outils 
    en ligne la possibilité de le faire. Pour cela, contactez imp at centreon dot com. 

.. note:: 
    Si vous avez des questions ou des problèmes relatifs à l'installation de IMP, vous pouvez contacter
    nos équipes techniques via l'adresse email suivant : imp at centreon dot com.

