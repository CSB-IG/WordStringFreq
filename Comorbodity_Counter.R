sentences<-scan("Comorbilidad.txt","character",sep="\n")
# Reads a list of ICD Codes from a list
words.freq<-table(sentences) 
# Since ICD codes are more 'strings' than 'words', no punctuation revision is required
Z <- cbind(names(words.freq),as.integer(words.freq))
# It compiles a "string-frequency table" useful to build Frequency vs Rank Distributions
write.table(Z, file="conteos_comorbilidades.csv", sep=",")
