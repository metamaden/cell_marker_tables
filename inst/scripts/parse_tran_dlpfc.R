save.fname <- "lctmarkers-tran-dlpfc.rda"
save.fpath <- file.path("data", save.fname)
fname <- "tran-et-al-2021_multiregion_supptables-top-ctmarker-dlpfc.csv"
fpath <- file.path("data-dl", fname)
dft <- read.csv(fpath)
dft <- t(dft)
ltran <- lapply(seq(nrow(dft)), function(ii){
  dfii <- dft[ii,]; dfii[!dfii==""]
})
names(ltran) <- rownames(dft)
# save
save(ltran, file = save.fpath)