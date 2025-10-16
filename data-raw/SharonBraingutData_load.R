#Load libraries
library("tidyverse")
library("DESeq2")

#processed files
gutbrain<-readRDS("data-raw/gutbrain.RDS") #DESeq2 object
gutbrain_metadata<-read.csv("data-raw/gutbrain_metadata.csv", row.names = 1) #Metadata for DESeq2 objects

#usethis processed files
usethis::use_data(gutbrain, overwrite = TRUE)
usethis::use_data(gutbrain_metadata, overwrite = TRUE)

