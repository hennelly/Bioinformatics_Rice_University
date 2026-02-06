library(ggplot2)
library(dplyr)

fst <- read.table("fst.txt", header = TRUE)


ggplot(fst, aes(x = BPcum, y = FST, color = CHR)) +
  geom_point(size = 0.6)
