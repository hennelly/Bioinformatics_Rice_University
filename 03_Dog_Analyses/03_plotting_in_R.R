library (ggplot2)
library(dplyr)
library (tidyverse)

### Open the vcf file on your computer and save it as a csv file: 

dat_hap <- read.csv("Oct26_Figure1_TSHR_Haplotype_phased.csv", header=TRUE)

# organize the dataset 
data_long <- gather(dat_hap, Sample, Allele, Affenpinscher01_33500_A:Wolf95_B, factor_key=TRUE)

#Make my variables in factor format
data_long$POS <- as.factor(data_long$POS)
data_long$Allele <- as.factor(data_long$Allele)

#Plot with geom_tile entire TSHR gene
p1 <- ggplot(data_long,aes(x=POS,y=Sample,fill=Allele))+
      geom_tile() 
 p2 <- p1 + scale_fill_manual(values = c("lightblue", "red", "black", "gray", "black")) 
p2

ggsave("Oct31_TSHR_final.tiff", width=10,height=3) 
