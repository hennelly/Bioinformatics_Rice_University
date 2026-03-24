library(maps)
install.packages("mapdata")
library(mapdata)
install.packages("rworldmap")
library(rworldmap)
install.packages("scatterpie")
library(mapplots)
library(ggplot2)
library(scatterpie)

dat <- read.csv("Ancient_MGAM_SI_Locus_age_dogs.csv", header=TRUE)

datlupus <- dat[dat$Species == "lupus", ]
datfamiliaris <- dat[dat$Species == "familiaris", ]

## TIME LINE 
ggplot(datfamiliaris, aes(x=Long, y=Age_Name_BP, fill=SI)) + geom_point(shape = 21, size = 4, color = "black", stroke = 0.5) +  scale_fill_manual(values = c("gray","mediumseagreen", "turquoise2", "orange2", "white", "orange2"))  


##################################
## 11kya to 7kya map ##
##################################
datlupus <- dat[dat$Species == "lupus", ]
datfamiliaris <- dat[dat$Species == "familiaris", ]
datSecondset_4kya_10kya <- datfamiliaris[datfamiliaris$Secondset_7kya_10kya == "yes", ]


world <- map_data('world')
p <- ggplot(world, aes(lat, long)) +
    geom_map(map=world, aes(map_id=region), fill="lightgray", color=NA) +
    coord_quickmap() + theme_classic() 

q <- p +
    geom_point(dat = datSecondset_4kya_10kya, aes(x = Long, y = Lat , fill=SI), size = 4, stroke = 1, shape=21, color="black", stroke=1)  + scale_fill_manual(values = c("mediumseagreen","orange2", "orange2", "orange2", "white", "orange2"))  

q+  theme(line = element_blank(),
        text = element_blank(),
        title = element_blank()) +
        scale_x_continuous(limits = c(-15, 180))+
        scale_y_continuous(limits = c(-50,80)) 


ggsave("Aug27_2025_map_ancientdogs_10to4kya.tiff", width=7,height=4) 

##################################
##  7kya to 4kya ##
##################################


datlupus <- dat[dat$Species == "lupus", ]
datfamiliaris <- dat[dat$Species == "familiaris", ]
Secondset_7kya.4kya <- datfamiliaris[datfamiliaris$Secondset_7kya_4kya == "yes", ]

world <- map_data('world')
p <- ggplot(world, aes(lat, long)) +
    geom_map(map=world, aes(map_id=region), fill="lightgray", color=NA) +
    coord_quickmap() + theme_classic() 

q <- p +
    geom_point(dat = Secondset_7kya.4kya, aes(x = Long, y = Lat , fill=SI), size = 4, stroke = 1, shape=21, color="black")  + scale_fill_manual(values = c("gray","orange2", "turquoise2", "orange2", "white", "orange2"))  

q+  theme(line = element_blank(),
        text = element_blank(),
        title = element_blank()) +
        scale_x_continuous(limits = c(-15, 180))+
        scale_y_continuous(limits = c(-50,80)) 


ggsave("CELL_Sept17_2025_map_ancientdogs_4kya_to_present.tiff", width=7,height=4) 

##################################
##  4,000 to present years ago ##
##################################


datlupus <- dat[dat$Species == "lupus", ]
datfamiliaris <- dat[dat$Species == "familiaris", ]
Secondset_4kya_present <- datfamiliaris[datfamiliaris$Secondset_4kya_present == "yes", ]

world <- map_data('world')
p <- ggplot(world, aes(lat, long)) +
    geom_map(map=world, aes(map_id=region), fill="lightgray", color=NA) +
    coord_quickmap() + theme_classic() 

q <- p +
    geom_point(dat = Secondset_4kya_present, aes(x = Long, y = Lat , fill=SI), size = 4, stroke = 1, shape=21, color="black")  + scale_fill_manual(values = c("mediumseagreen","turquoise2", "orange2", "orange2", "white", "orange2"))  

q+  theme(line = element_blank(),
        text = element_blank(),
        title = element_blank()) +
        scale_x_continuous(limits = c(-15, 180))+
        scale_y_continuous(limits = c(-50,80)) 
