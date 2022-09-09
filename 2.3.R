model.linreg1 <- lm( Ny1$Pris_m_ ~ Ny1$Grundareal, data = Ny1 )
summary(model.linreg1)
model.linreg2 <- lm( Ny1$Pris_m_ ~ Ny1$Vgtet_areal, data = Ny1 )
summary(model.linreg2)
model.linreg3 <- lm( Ny1$Pris_m_ ~ Ny1$Liggetid, data = Ny1 )
summary(model.linreg3)
model.linreg4 <- lm( Ny1$Pris_m_ ~ Ny1$Boligareal, data = Ny1 )
summary(model.linreg4)
model.linreg5 <- lm( Ny1$Pris_m_ ~ Ny1$Ejerudgifter_pr__md_, data = Ny1 )
summary(model.linreg5)
# I linje 1-10 er der lavet simple lineære regressioner på de 5 variable der er valgt, 
# til opgave 2.3. Der ses i koden, hvilken variabel der passer til den enkelte ligning
# Efter hver lm-funktion, er der benyttet summary for at se hvilke værdier,
# der er kommet ud af den lineære regression. 
# Hver enkelt ligning er kaldt model.linreg 1-5. 

Matr=Ny1[, -c(1, 2, 3, 4, 8, 9, 10, 14, 15, 16, 17)]
# Linje 17 er der lavet et nyt datasæt, hvor alle uønskede variable er fjernet (udover de 5 vi bruger)
# Det nye datasæt der skal benyttes til korrelationsmatrix er kaldt "Matr"

Korrelationsmatrix=cor(Matr)
#For at lave en korrelationsmatrix sættes koden op som i linje 21. Her er hele datasættet indsat
# Hvis man kun skulle lave korrelation mellem to variable, ses eksempel på dette i linje 24.
cor(Ny1$Boligareal, Ny1$pris)

plot(Matr$Pris_m_, Matr$Boligareal)
plot(Matr$Pris_m_, Matr$Grundareal)
plot(Matr$Pris_m_, Matr$Vgtet_areal)
plot(Matr$Pris_m_, Matr$Boligareal)
plot(Matr$Pris_m_, Matr$Ejerudgifter_pr__md_)
# I linje 26-30 er der lavet simplificerede plots, for at se hvor den mest rette linje er i et plot.
# Disse er der screendumps af i docs OLA 1.

Matrny=Matr[,-c(5)]
d=cor(Matrny)
# Linje 35-35 er der lavet en ny dataframe, hvor pris pr. m2 er fjernet. 
# Dette fordi variablerne i opgave 2.3 skal sættes overfor hinanden og se om der er korrelation. 
# Den nye dataframe er kaldt "Matrny" og den nye korrelationsmatrix er kaldt "d"

confint(model.linreg6)
#Denne funktion viser signifikansniveau og konfidensinterval i konsollen. 