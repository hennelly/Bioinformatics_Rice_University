library(ggplot2)
library(dplyr)


fst <- read.table("KRT71_filtered_fst_noNAN_results_sort.weir.fst.txt", header = TRUE)

head(fst0
#look at headers 
     
ggplot(fst, aes(x = Position, y = Fst)) +
  geom_point()
