#set working directory
setwd("M:/data/Tephra Geochemistry/R")

#read CSV files and give name
H1104=read.csv("Tephrabase H1.csv")
H4=read.csv("Tephrabase H4.csv")
H3=read.csv("Tephrabase H3.csv")
H5=read.csv("Tephrabase H5.csv")
H1158=read.csv("Tephrabase H1158.csv")

#Basic plot, all oxides against one another
pairs(H1104, main="Tephrabase H1 Geochemistry (all Oxides)", cex.main=1.5)

#Axis labels
SiO2=expression("wt % SiO"[2])
TiO2=expression("wt % TiO"[2])
Al2O3=expression("wt % Al"[2]*"O"[3])
FeO="wt % FeO"
MnO="wt % MnO"
MgO="wt % MgO"
CaO="wt % CaO"
Na2O=expression("wt % Na"[2]*"O")
K2O=expression("wt % K"[2]*"O")
P2O5=expression("wt % P"[2]*"O"[5])


#Basic plot, selected oxides (9 plots)
par(mfcol=c(1,1))
plot(H1104$SiO2, H1104$TiO2, xlab=SiO2, ylab=Al2O3)
plot(H1158$SiO2, H1158$FeO, las="1", xaxs="i", yaxs="i", pch=1, col="red", bg="blue", xlab=SiO2, ylab=TiO2, cex=1, xlim=c(50,80), ylim=c(0,10))
plot(SiO2, K2O)
plot(Tephrabase.H1$SiO2, Tephrabase.H1$CaO, col ="red", main ="Solheimer T1", col.main="blue", cex.main=2)
plot(FeO, CaO, pch=3)
plot(FeO, MnO, col = "pink")
plot(Na2O, K2O, col="blue", cex=5)
plot(MgO, CaO, col="green")
plot(Al2O3, TiO2, col ="brown", cex=3, pch=12)

#Use ggplot2 for nice looking graphs
library(ggplot2)

#plot qplot using ggplot2
qplot(FeO, TiO2, data=H1104, colour=Dataset, xlab=FeO, ylab=TiO2, xlim=c(0,15), ylim=c(0,3))

#plot using ggplot
ggplot(data = H1104, aes(FeO,TiO2)) + 
  geom_point(aes(color=Dataset)) +
  theme_bw() +
  ylab(TiO2) +
  xlab(FeO)


#Test test test 

#changes

#more new changes

#and again

#more more more