#Average Years played for each pick
Nba=read.csv("alldrafts1.csv", sep = ",")
library(tidyverse)
Years= Nba %>% filter(Yrs != "")
AvgYrs= Years %>% group_by(Pk) %>% summarise(years = mean(as.numeric(Yrs)))
