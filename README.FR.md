# Projet ERP — Gestion et analyse des données
[English version](README.md) 

## Présentation du projet

Ce projet consiste à concevoir une base de données relationnelle inspirée d'un système ERP et un tableau de bord décisionnel pour analyser les performances d'une entreprise.

Il combine MySQL pour la gestion et l'analyse des données et Power BI pour la visualisation des indicateurs clés liés aux clients, aux ventes, aux factures, aux paiements et aux stocks.

## Objectifs

- Concevoir et structurer une base de données relationnelle.
- Écrire des requêtes SQL pour répondre à des problématiques métier.
- Analyser les commandes clients, les ventes, les paiements et les stocks.
- Créer des vues SQL réutilisables et calculer des indicateurs clés de performance (KPI).
- Concevoir un tableau de bord Power BI pour faciliter le suivi de l'activité.

## Technologies utilisées

- **MySQL** — Gestion de la base de données, Requêtes et analyses métier
- **Power BI** — Visualisation des données et création du tableau de bord
- **Csv** — Format d'échange et d'importation des données

## Structure de la base de données

La base de données comprend six tables principales :

- `Customers` — Informations sur les clients
- `Products` — Produits, prix et quantités en stock
- `Orders` — Commandes clients
- `Order_Items` — Détail des produits commandés
- `Invoices` — Factures
- `Payments` — Paiements associés aux factures

Ces tables permettent de représenter les relations entre les clients, les commandes, les produits, les factures et les paiements.

## Scripts SQL

| Fichier | Description |
|---|---|
| `schema.sql` | Création de la structure de la base de données et des tables |
| `seed.sql` | Insertion des données de test |
| `queries.sql` | Requêtes SQL d'extraction et d'analyse |
| `view.sql` | Création de vues SQL pour faciliter les analyses |
| `kpi.sql` | Requêtes de calcul des indicateurs clés de performance |

## Analyses métier

Le projet couvre plusieurs axes d'analyse :

- Analyse des commandes par client
- Analyse des ventes et du chiffre d'affaires par produit
- Suivi des stocks
- Suivi des factures et des paiements
- Estimation de la rentabilité
- Suivi des indicateurs clés de performance

## Tableau de bord Power BI

Le tableau de bord vise à présenter une vue synthétique de l'activité à travers des cartes KPI, des graphiques, des tableaux et des filtres interactifs.

## Améliorations envisagées

- Fiabiliser les relations entre les tables et les interactions du rapport Power BI.
- Harmoniser les types de données et vérifier les calculs des KPI.
- Automatiser l'actualisation des données.
- Étendre la base de données aux fournisseurs et aux achats.

## Ce que j’ai appris

À travers ce projet, j’ai développé des compétences pratiques en systèmes d’information et en analyse de données :

- **Modélisation de bases de données :** conception d’une base de données relationnelle et compréhension des relations entre les tables.
- **SQL :** création de tables, insertion de données, jointures, agrégations, vues SQL et calcul d’indicateurs métier.
- **Analyse métier :** suivi des ventes, des paiements, des factures, des stocks et estimation des bénéfices.
- **Power BI :** importation de données CSV, création de KPI, de graphiques et de tableaux de bord interactifs.
- **Qualité des données :** vérification de la cohérence des données et comparaison des résultats entre SQL et Power BI.


Ce projet m’a permis de mieux comprendre comment une base de données ERP peut soutenir le reporting, le suivi des performances et la prise de décision.

## Contexte

Projet pédagogique réalisé pour développer des compétences en SQL, en conception de bases de données relationnelles, en systèmes d'information et en Business Intelligence.
