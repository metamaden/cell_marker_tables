#----------------
# SD filt results
#----------------
save.fname <- "lctmarkers-oord-sdfilt.rda"
save.fpath <- file.path("data", save.fname)
fname <- "oord-aberg-2022_supptables-ctmarker-hiexpr-studylabel.csv"
fpath <- file.path("data-dl", fname)
dft <- read.csv(fpath)
loord.sd <- lapply(seq(nrow(dft)), function(ii){
  dfii <- dft[ii,c(7:ncol(dft))]; dfii[!dfii==""|grepl("^X.*", dfii)]
})
names(loord.sd) <- dft[,1]
# save
save(loord.sd, file = save.fpath)

#-------------
# MAST results
#-------------
save.fname <- "lctmarkers-oord-mast.rda"
save.fpath <- file.path("data", save.fname)
fname <- "oord-aberg-2022_supptables-ctmarker-mastresult-panelgenes.csv"
fpath <- file.path("data-dl", fname)
dft <- read.csv(fpath)
# get type labels
ctv <- unique(dft$cluster)
loord.mast <- lapply(seq(length(ctv)), function(ii){
  cti <- ctv[ii]; dfii <- dft[dft[,7]==cti,1]
})
names(loord.mast) <- ctv
# save
save(loord.sd, file = save.fpath)

