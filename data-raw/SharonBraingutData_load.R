#Load libraries
library("tidyverse")
library("DESeq2")

#processed files
gutbrain<-readRDS("data-raw/gutbrain.RDS") #DESeq2 object
gutbrain_metadata<-read.csv("data-raw/gutbrain_metadata.csv", row.names = 1) #Metadata for DESeq2 object

#raw files
mouse_gutbrain_de_counts_asd <- read.csv("data-raw/mouse_gutbrain_de_counts_asd.csv")
mouse_gutbrain_de_counts_controls <- read.csv("data-raw/mouse_gutbrain_de_counts_controls.csv")
mouse_gutbrain_de_counts_prefrontalcortex <- read.csv("data-raw/mouse_gutbrain_de_counts_prefrontalcortex.csv")
mouse_gutbrain_de_counts_striatum <- read.csv("data-raw/mouse_gutbrain_de_counts_striatum.csv")
mouse_gutbrain_de_autismVcontrol <- read.csv("data-raw/mouse_gutbrain_de_autismVcontrol.csv")
mouse_gutbrain_de_autismVcontrol_in_prefrontalcortex <- read.csv("data-raw/mouse_gutbrain_de_autismVcontrol_in_prefrontalcortex.csv")
mouse_gutbrain_de_autismVcontrol_in_striatum <- read.csv("data-raw/mouse_gutbrain_de_autismVcontrol_in_striatum.csv")
mouse_gutbrain_de_tissuetype <- read.csv("data-raw/mouse_gutbrain_de_tissuetype.csv")
mouse_gutbrain_de_tissuetype_in_ASDmice <- read.csv("data-raw/mouse_gutbrain_de_tissuetype_in_ASDmice.csv")
mouse_gutbrain_de_tissuetype_in_controlmice <- read.csv("data-raw/mouse_gutbrain_de_tissuetype_in_controlmice.csv")

#usethis processed files
usethis::use_data(gutbrain, overwrite = TRUE)
usethis::use_data(gutbrain_metadata, overwrite = TRUE)


#usethis raw files
usethis::use_data(mouse_gutbrain_de_counts_asd, overwrite = TRUE)
usethis::use_data(mouse_gutbrain_de_counts_controls, overwrite = TRUE)
usethis::use_data(mouse_gutbrain_de_counts_prefrontalcortex, overwrite = TRUE)
usethis::use_data(mouse_gutbrain_de_counts_striatum, overwrite = TRUE)
usethis::use_data(mouse_gutbrain_de_autismVcontrol, overwrite = TRUE)
usethis::use_data(mouse_gutbrain_de_autismVcontrol_in_prefrontalcortex, overwrite = TRUE)
usethis::use_data(mouse_gutbrain_de_autismVcontrol_in_striatum, overwrite = TRUE)
usethis::use_data(mouse_gutbrain_de_tissuetype, overwrite = TRUE)
usethis::use_data(mouse_gutbrain_de_tissuetype_in_ASDmice, overwrite = TRUE)
usethis::use_data(mouse_gutbrain_de_tissuetype_in_controlmice, overwrite = TRUE)
