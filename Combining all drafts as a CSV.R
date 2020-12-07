## ISA 401 Project NBA Draft
## Which pick is on average the best?

draft_2000 <- read.csv("2000 NBA draft.csv", header = TRUE)
draft_2001 <- read.csv("2001 NBA draft.csv", sep = ",")
draft_2002 <- read.csv("2002 NBA draft.csv", sep = ",")
draft_2003 <- read.csv("2003 NBA draft.csv", sep = ",")
draft_2004 <- read.csv("2004 NBA draft.csv", sep = ",")
draft_2005 <- read.csv("2005 NBA draft.csv", sep = ",")
draft_2006 <- read.csv("2006 NBA draft.csv", sep = ",")
draft_2007 <- read.csv("2007 NBA draft.csv", sep = ",")
draft_2008 <- read.csv("2008 NBA draft.csv", sep = ",")
draft_2009 <- read.csv("2009 NBA draft.csv", sep = ",")
draft_2010 <- read.csv("2010 NBA draft.csv", sep = ",")
draft_2011 <- read.csv("2011 NBA draft.csv", sep = ",")
draft_2012 <- read.csv("2012 NBA draft.csv", sep = ",")
draft_2013 <- read.csv("2013 NBA draft.csv", sep = ",")
draft_2014 <- read.csv("2014 NBA draft.csv", sep = ",")
draft_2015 <- read.csv("2015 NBA draft.csv", sep = ",")
draft_2016 <- read.csv("2016 NBA draft.csv", sep = ",")
draft_2017 <- read.csv("2017 NBA draft.csv", sep = ",")
draft_2018 <- read.csv("2018 NBA draft.csv", sep = ",")




## combining all picks into one table 
all_drafts=rbind(draft_2000, draft_2001, draft_2002, draft_2003, draft_2004, draft_2005, draft_2006, draft_2007, draft_2008, draft_2009, draft_2010, draft_2011,
                 draft_2012, draft_2013, draft_2014, draft_2015, draft_2016, draft_2017, draft_2018)

#Making the First Row Headers
names(all_drafts) <- as.matrix(all_drafts[1, ])
all_drafts <- all_drafts[-1, ]
all_drafts[] <- lapply(all_drafts, function(x) type.convert(as.character(x)))
all_drafts


#Getting rid of the rk column
all_drafts=select(all_drafts, -Rk)

library(tidyverse)


library("readxl")

#Downloading all the drafts as a CSV
write.csv(all_drafts,"all_drafts.csv")


