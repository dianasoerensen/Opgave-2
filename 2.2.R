cor(Ny1$Boligareal, Ny1$pris)
# Denne kode er få at komme frem til korrelationen mellem kvadratmeter og pris. 

plot(Ny1$Boligareal, Ny1$pris, 
     main = "Scatterplot", 
     xlab = "Kvadratmeterpris", ylab = "Boligens pris", 
     col="dark green" ) 
plot(Ny1$pris, Ny1$pris, 
     main = "Scatterplot", 
     xlab = "Boligens pris", ylab = "Boligens pris", 
     col="dark blue" )
plot(Ny1$Pris_m_, Ny1$Liggetid, 
     main = "Scatterplot", 
     xlab = "Pris pr. kvadratmeter", ylab = "Liggetid", 
     col="dark red" )
# Linje 45-57 er scatterplots brugt i opgave 2.2, for at illustrere hhv. positiv korrelation,
# svag positiv korrelation og negativ korrelation. Der er både givet navn og farve