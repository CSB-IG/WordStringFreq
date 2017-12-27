# R code used to built a frequency rank table from a list, in this case data corresponds to ICD codes from Hospital Records
# This is basically a rehash of https://gist.github.com/yulijia/1857130

sentences<-scan("Comorbilidad.txt","character",sep="\n")
# Reads a list of ICD Codes from a list
words.freq<-table(sentences) 
# Since ICD codes are more 'strings' than 'words', no punctuation revision is required
Z <- cbind(names(words.freq),as.integer(words.freq))
# It compiles a "string-frequency table" useful to build Frequency vs Rank Distributions
write.table(Z, file="conteos_comorbilidades.csv", sep=",")
