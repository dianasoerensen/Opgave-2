library(readr)
EDC_renset_data <- read_csv2("~/Desktop/OLA1/EDC_renset_data.csv")
View(EDC_renset_data)
#De ovenstående koder er til at importere dataen fra CSV-fil til R. 

Ny=EDC_renset_data[-c(6), -c(11, 15, 19, 20, 21, 22, 23, 24)]
# I linje 6 er alle kolonner med udelukkende NA-værdier fjernet. 
# Dette datasæt er kaldt "Ny"
Ny1=na.omit(Ny)
# I linje 8 er alle NA-værdier fjernet, dette datasæt er kaldt "Ny1"