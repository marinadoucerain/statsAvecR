####################################
#          Initiation a R          #
#            Solutions             #
####################################

# 1) Preparer un script bien formatte:
#	- Imaginer que l'on aura besoin des modules "MASS" et "car". Charger ces modules.
#	- Specifier le repertoire de travail ou se trouvent les donnees "datasetAnorexia.csv"

library(MASS)
library(car)
setwd("/path/to/directory/")

# 2) Importer les donnees "dataset_anorexia.csv" dans un objet R appele zz. Les valeurs sont separees par des virgules (comma-delimited)
zz <- read.table("datasetAnorexia.csv", header=TRUE, sep=",")

# 3) Quelles sont les noms des variables?
names(zz1)

# 4) Combien d'observations y a-t'il dans ce jeu de donnees?
# En regardant dans le panneau "Environment", on voit qu'il y a 72 observations

# 5) Calculer la moyenne et l'ecart type des variables preWeight et postWeight.
mean(zz$preWeight, na.rm=TRUE)
sd(zz$preWeight, na.rm=T)
mean(zz$postWeight, na.rm=TRUE)
sd(zz$postWeight, na.rm=TRUE)

# 6) Calculer la difference de poids pre-post intervention dans une nouvelle variable appelee "diffPrePost
zz$diffPrePost <- zz$postWeight-zz$postWeight

# 7) Creer un sous-ensemble dans un objet appele zz1 ne contenant que les personnes ayant suivi un traitement CBT.
zz1 <- zz[zz$treatment=="CBT",]

# 8) Effectuer un test t pour voir s'il y a une difference significative entre le poids pre et post traitement pour ces personnes du sous ensemble zz1 (seulement CBT)
t.test(zz1$postWeight, zz1$preWeight)
