save.fname <- "lctmarkers-gsheet-dlpfc.rda"
save.fpath <- file.path("data", save.fname)
fname <- "gsheet-brainmarkers.csv"
fpath <- file.path("data-dl", fname)
dft <- read.csv(fpath)
# aggregate by source
srcv <- unique(unlist(strsplit(dft$citations, ";")))
srcv <- srcv[!is.na(srcv)]
lgsheet <- lapply(srcv, function(srci){
  dfti <- dft[grepl(paste0("(^|;)", srci, "($|;)"), dft$citations),]
  ctvi <- unique(dfti$type_label)
  ltypes <- lapply(ctvi, function(typei){
    dfti[dfti$type_label==typei,2]
  })
  names(ltypes) <- ctvi
  return(ltypes)
})
names(lgsheet) <- srcv
# save
save(lgsheet, file = save.fpath)