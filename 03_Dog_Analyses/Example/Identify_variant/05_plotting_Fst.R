library(ggplot2)
library(dplyr)


fst <- read.table("TKTL1_filtered_nonan.weir_sort.fst.txt", header = TRUE)

head(fst0
#look at headers 
     
ggplot(fst, aes(x = Position, y = Fst)) +
  geom_point()
