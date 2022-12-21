#!/usr/bin/env R

# Author: Sean Maden
#
# Map markers to cell types for bioinformatics analysis.
#

#-----
# load
#-----
table.dpath <- file.path("data")
lt <- lapply(list.files(table.dpath), read.csv)
names(lt) <- table.dpath

#------------------
# map to cell types
#------------------

#----------------------
# assess marker sources
#----------------------