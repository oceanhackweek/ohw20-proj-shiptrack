#### MAD LEG 2 Sv 38khz Transit Petal Transects


library(sp)
library(raster)
library(rgdal)
library(maps)
library(mapdata)
library(rgeos)
###set Working directory 

##longhurst
longhurst <- readOGR(paste("e:/Longhurst bioregions DATA","Longhurst_world_v4_2010.shp",sep="/"),layer='Longhurst_world_v4_2010',verbose = F)
sp_DATA <- read.csv("PETAL_Transect_MAD2_Transit_Sv38_Rplot.csv")
View(sp_DATA)
zone_code1='EAFR'
zone_code2='ISSG'

coordinates(sp_DATA) <- c("Longitude", "Latitude")
proj4string(sp_DATA) <- proj4string(longhurst)

sublonghurst1 <- longhurst[longhurst@data$CODE==zone_code1,]
sublonghurst2 <- longhurst[longhurst@data$CODE==zone_code2,]


windows()
par(oma=c(2,2,2,2))


boxx <- extent(44.5,48,-29,-25) ### with provinces visible
map(database="worldHires",col="gray", fill=T,xlim=c(boxx@xmin,boxx@xmax),ylim=c(boxx@ymin,boxx@ymax),border=T)
map.axes(cex.axis=1.5, xlab="Longitude", ylab="Latitude")

plot(longhurst,col="white",bg="white",add=T)
map(database="worldHires",col="gray", fill=T,xlim=c(boxx@xmin,boxx@xmax),ylim=c(boxx@ymin,boxx@ymax),interior=F,add=T,border=T)
box()
#grid(col='gray')


text(x=45,y=-26,label='EAFR',font=1,cex=1.5)
text(x=45,y=-28.5,label='ISSG',font=1,cex=1.5)
#text(x=46.25, y=-26.75, label="I", font=1, col="black", cex=2)
#text(x=45.75, y=-27.25, label="II", font=1, col="black", cex=2)
#text(x=45.75, y=-28, label="III", font=1, col="black", cex=2)
#text(x=46.25, y=-28.15, label="IV", font=1, col="black", cex=2)
#text(x=46.75, y=-28.1, label="V", font=1, col="black", cex=2)
#text(x=47.15, y=-27.75, label="VI", font=1, col="black", cex=2)
#text(x=47, y=-27.25, label="VII", font=1, col="black", cex=2)


sub_sp_DATA=subset(sp_DATA, sp_DATA$Cruise=="NW_SS")
coordinates(sub_sp_DATA) <- c("Longitude","Latitude")
plot(sub_sp_DATA, pch=16, cex=0.50, add=TRUE, col="firebrick4")

sub_sp_DATA=subset(sp_DATA, sp_DATA$Cruise=="NW_N")
coordinates(sub_sp_DATA) <- c("Longitude","Latitude")
plot(sub_sp_DATA, pch=16, cex=0.50, add=TRUE, col="navyblue")

sub_sp_DATA=subset(sp_DATA, sp_DATA$Cruise=="NW_SR")
coordinates(sub_sp_DATA) <- c("Longitude","Latitude")
plot(sub_sp_DATA, pch=16, cex=0.50, add=TRUE, col="purple2")

sub_sp_DATA=subset(sp_DATA, sp_DATA$Cruise=="NW_D")
coordinates(sub_sp_DATA) <- c("Longitude","Latitude")
plot(sub_sp_DATA, pch=16, cex=0.50, add=TRUE, col="darkgoldenrod3")

################

sub_sp_DATA=subset(sp_DATA, sp_DATA$Cruise=="SW_N")
coordinates(sub_sp_DATA) <- c("Longitude","Latitude")
plot(sub_sp_DATA, pch=16, cex=0.50, add=TRUE, col="navyblue")


sub_sp_DATA=subset(sp_DATA, sp_DATA$Cruise=="SW_SR")
coordinates(sub_sp_DATA) <- c("Longitude","Latitude")
plot(sub_sp_DATA, pch=16, cex=0.50, add=TRUE, col="purple2")


sub_sp_DATA=subset(sp_DATA, sp_DATA$Cruise=="SW_D")
coordinates(sub_sp_DATA) <- c("Longitude","Latitude")
plot(sub_sp_DATA, pch=16, cex=0.50, add=TRUE, col="darkgoldenrod3")


#################
sub_sp_DATA=subset(sp_DATA, sp_DATA$Cruise=="S_N")
coordinates(sub_sp_DATA) <- c("Longitude","Latitude")
plot(sub_sp_DATA, pch=16, cex=0.50, add=TRUE, col="navyblue")

sub_sp_DATA=subset(sp_DATA, sp_DATA$Cruise=="S_SR")
coordinates(sub_sp_DATA) <- c("Longitude","Latitude")
plot(sub_sp_DATA, pch=16, cex=0.50, add=TRUE, col="purple2")

sub_sp_DATA=subset(sp_DATA, sp_DATA$Cruise=="S_D")
coordinates(sub_sp_DATA) <- c("Longitude","Latitude")
plot(sub_sp_DATA, pch=16, cex=0.50, add=TRUE, col="darkgoldenrod3")

###########################



sub_sp_DATA=subset(sp_DATA, sp_DATA$Cruise=="SSE_N")
coordinates(sub_sp_DATA) <- c("Longitude","Latitude")
plot(sub_sp_DATA, pch=16, cex=0.50, add=TRUE, col="navyblue")

sub_sp_DATA=subset(sp_DATA, sp_DATA$Cruise=="SE_N")
coordinates(sub_sp_DATA) <- c("Longitude","Latitude")
plot(sub_sp_DATA, pch=16, cex=0.50, add=TRUE, col="navyblue")



sub_sp_DATA=subset(sp_DATA, sp_DATA$Cruise=="SE_SR")
coordinates(sub_sp_DATA) <- c("Longitude","Latitude")
plot(sub_sp_DATA, pch=16, cex=0.50, add=TRUE, col="purple2")



sub_sp_DATA=subset(sp_DATA, sp_DATA$Cruise=="SE_D")
coordinates(sub_sp_DATA) <- c("Longitude","Latitude")
plot(sub_sp_DATA, pch=16, cex=0.50, add=TRUE, col="darkgoldenrod3")




##############################################


sub_sp_DATA=subset(sp_DATA, sp_DATA$Cruise=="NE_N")
coordinates(sub_sp_DATA) <- c("Longitude","Latitude")
plot(sub_sp_DATA, pch=16, cex=0.50, add=TRUE, col="navyblue")


sub_sp_DATA=subset(sp_DATA, sp_DATA$Cruise=="NE_SR")
coordinates(sub_sp_DATA) <- c("Longitude","Latitude")
plot(sub_sp_DATA, pch=16, cex=0.50, add=TRUE, col="purple2")


sub_sp_DATA=subset(sp_DATA, sp_DATA$Cruise=="NE_D")
coordinates(sub_sp_DATA) <- c("Longitude","Latitude")
plot(sub_sp_DATA, pch=16, cex=0.50, add=TRUE, col="darkgoldenrod3")



####################################################

sub_sp_DATA=subset(sp_DATA, sp_DATA$Cruise=="N_N")
coordinates(sub_sp_DATA) <- c("Longitude","Latitude")
plot(sub_sp_DATA, pch=16, cex=0.50, add=TRUE, col="navyblue")


sub_sp_DATA=subset(sp_DATA, sp_DATA$Cruise=="N_SR")
coordinates(sub_sp_DATA) <- c("Longitude","Latitude")
plot(sub_sp_DATA, pch=16, cex=0.50, add=TRUE, col="purple2")

sub_sp_DATA=subset(sp_DATA, sp_DATA$Cruise=="N_D")
coordinates(sub_sp_DATA) <- c("Longitude","Latitude")
plot(sub_sp_DATA, pch=16, cex=0.50, add=TRUE, col="darkgoldenrod3")

##############################################

sub_sp_DATA=subset(sp_DATA, sp_DATA$Cruise=="SSE_N")
coordinates(sub_sp_DATA) <- c("Longitude","Latitude")
plot(sub_sp_DATA, pch=16, cex=0.50, add=TRUE, col="navyblue")


sub_sp_DATA=subset(sp_DATA, sp_DATA$Cruise=="SSE_SR")
coordinates(sub_sp_DATA) <- c("Longitude","Latitude")
plot(sub_sp_DATA, pch=16, cex=0.50, add=TRUE, col="purple2")


sub_sp_DATA=subset(sp_DATA, sp_DATA$Cruise=="SSE_D")
coordinates(sub_sp_DATA) <- c("Longitude","Latitude")
plot(sub_sp_DATA, pch=16, cex=0.50, add=TRUE, col="darkgoldenrod3")



#text(46.27,-27.48,label="*",col="red",cex=4) ###MADRidge
legend(46.75,-25.5,legend=c("Sunset","Night", "Sunrise","Day"),pch=c(16,16,16,16),col = c("firebrick4","navyblue","purple2","darkgoldenrod3") ,bty="",cex=1.0)
mtext("Longitude (°E)",side=1, line=2.5, cex=2.0)
mtext("Latitude (°S)", side=2, line=2.5,cex=2.0)
mtext("MAD-Ridge", side=3, line=1.0,cex=2.0)
