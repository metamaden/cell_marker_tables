#!/usr/bin/env R

# Author: Sean Maden
#
# Download cell type marker tables.
#

libv <- c("gsheet")
sapply(libv, library, character.only = T)

#-----
# load
#-----
# get the url to view the google sheet
# note: link sharing should be on
view.url <- "https://docs.google.com/spreadsheets/d/13fVL1IfzYHWmMBII57ogM1G8kkoqDEHiQbuk01jG7ig/edit#gid=1509672192"

save.fname <- "gsheet-brainmarkers.csv"
save.fpath <- file.path("data-dl", save.fname)

#----------------------
# download google sheet
#----------------------
# download and convert csv
url <- construct_download_url(view.url)
mt <- gsheet2tbl(url)

# save
write.csv(mt, file = save.fpath)
