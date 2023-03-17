# Yola Design

Ce site est une boutique en ligne pour une créatrice de bijoux et de déco sur meubles ou objets

## Principe

Il est développé avec node.js.

Il utilise les dépendances et paquets :
- Express
- dotenv
- pg
- express-session
- passport
- passport-local
- bcryptjs
- sqitch

Les paquets suivants ont aussi été utilisés pour le développement:
- eslint
- nodemon

## Installation / Configuration

dans le terminal de l'application, charger les dépendances :
` npm i `


## Fonctionnement

Express-session nous permet de créer des sessions et de définir des cookies de session pour que la connection de l'utilisateur persiste au travers de toutes les pages en fonction de son rôle.

Passport va nous permettre de gérer les login/logout des différents comptes.

Bcryptjs va nous permettre de transformer le mot de passe de l'utilisateur pour ne pas le stocker dans la base de données, mais de pouvoir comparer son hash selon une formule magique.

