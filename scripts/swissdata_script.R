###### SWISSDATA ######
# library(devtools)
# install_github("mbannert/swissdata")
# options(swissdata.wd = "../swissdata")
# set_update_all()
library(readxl)
library(swissdata)

# download cleaned dataset if it already exists pre-cleaned
# set_download("ch.fso.cpi")

# # get german version of the data
# cpi <- read_excel("../swissdata/ch.fso.cpi/download/cpi.xlsx")
# adecco <- read_excel("ch.adecco.sjmi.xlsx")
# view(adecco)


# view(cpi)


# ###### REGULAR ######

# library(readxl)
# library(tidyverse)
# # here need to manually get the data
# cpi_2 <- read_excel("cpi_regular.xlsx")
# head(cpi_2)
# view(cpi_2)


####### kofdata beispiel mit covid tourism #####

library(kofdata)
library(forecast)
library(astsa)

# check out list available collections
global <- kofdata::get_collection("globalbaro_vintages")
global_0120 <- global$`globalbaro_coincident_2020-01`
global_0620 <- global$`globalbaro_coincident_2020-06`

# tsplot(global_0120)
# tsplot(global_0620)

# plot 2 ts in one graph - both revisions
two_ts <- ts.plot(ts(global_0120), ts(global_0620))

# kof tourismus prognose - pre-covid, post-covid (für gleichen vorigen zeitraum)


# monthly baro vintages
monthly <- kofdata::get_collection("baro_vintages_monthly")
baro202409 <- monthly$baro_2024m09
head(baro201909)

baro202409 <- data.frame(baro202409)



print(baro202409)
baro201909 <- monthly$baro_2019m09

two_ts <- ts.plot(ts(baro201909), ts(baro202409))
