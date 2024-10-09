###### SWISSDATA ######
# library(devtools)
# install_github("mbannert/swissdata")
options(swissdata.wd = "../swissdata")
# set_update_all()
library(readxl)
library(swissdata)

# download cleaned dataset if it already exists pre-cleaned
set_download("ch.fso.cpi")

# get german version of the data
cpi <- read_excel("../swissdata/ch.fso.cpi/download/cpi.xlsx")
adecco <- read_excel("ch.adecco.sjmi.xlsx")
view(adecco)


view(cpi)


###### REGULAR ######

library(readxl)
library(tidyverse)
# here need to manually get the data
cpi_2 <- read_excel("cpi_regular.xlsx")
head(cpi_2)
view(cpi_2)
