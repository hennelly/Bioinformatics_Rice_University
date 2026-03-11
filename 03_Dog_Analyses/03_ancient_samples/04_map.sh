library(maps)
install.packages("mapdata")
library(mapdata)
install.packages("rworldmap")
library(rworldmap)
install.packages("scatterpie")
library(mapplots)
library(ggplot2)
library(scatterpie)

dat <- read.csv("GDEF9locus_age.csv", header=TRUE)

datlupus <- dat[dat$Species == "lupus", ]
datfamiliaris <- dat[dat$Species == "familiaris", ]

##################################
## Ancient Dog Paleolithic map ##
##################################
datlupus <- dat[dat$Species == "lupus", ]
datfamiliaris <- dat[dat$Species == "familiaris", ]
datPaleolithic <- dat[dat$Paleolithic_dog == "yes", ]

#GDF9 

world <- map_data('world')
p <- ggplot(world, aes(lat, long)) +
    geom_map(map=world, aes(map_id=region), fill="lightgray", color=NA) +
    coord_quickmap() + theme_classic() 

q <- p +
    geom_point(dat = datfamiliaris, aes(x = Long, y = Lat , fill=short_genotype, color = short_genotype), size = 4, stroke = 1)  + scale_fill_manual(values = c("turquoise2","orange2", "turquoise2", "orange2", "white", "orange2")) +  scale_color_manual(values = c("white","orange2", "mediumseagreen", "mediumseagreen", "turquoise2", "orange2"))   + 
  scale_shape_manual(values=c(21, 23, 22)) 

r <-  q+  theme(line = element_blank(),
        text = element_blank(),
        title = element_blank()) +
        scale_x_continuous(limits = c(-15, 180))+
        scale_y_continuous(limits = c(-50,80)) 
r

