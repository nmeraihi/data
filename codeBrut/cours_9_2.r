
options(repr.matrix.max.cols=8, repr.matrix.max.rows=8) #seulement pour afficher 8 lignes et 8 colonnes

# test_csv <-read.csv("https://raw.githubusercontent.com/nmeraihi/data/master/exemple_1.csv")
test_csv <-read.csv("exemple_1.csv")
test_csv

test_csv <-read.csv("https://raw.githubusercontent.com/nmeraihi/data/master/exemple_1.csv")
test_csv

attributes(test_csv)

test_csv <-read.csv("exemple_1.csv", header = F)
test_csv

exemple <-read.csv("exemple_1.csv", header = T)
exemple

class(exemple$Segment)

exemple <-read.csv("exemple_1.csv", header = T, stringsAsFactors=F)
exemple

class(exemple$Segment)

exemple <-read.csv("exemple_1.csv", header = T, stringsAsFactors=F)[,2:3]
exemple

exemple <-read.csv("exemple_1.csv", header = T, stringsAsFactors=F)[,c(1,3)]
exemple

read.table("exemple_1.txt", header=T)

read.table("exemple_1.txt", header=T, sep = ",")

install.packages("RCurl")

library(RCurl)

x <- getURL("https://raw.githubusercontent.com/aronlindberg/latent_growth_classes/master/LGC_data.csv")
y <- read.csv(text = x)

head(y)

read.table("https://raw.githubusercontent.com/nmeraihi/data/master/exemple_2_2.txt", header=T, sep = ",")

df<-read.table("https://raw.githubusercontent.com/nmeraihi/data/master/exemple_2_2.txt", header=T, sep = ",")
is.na(df)

is.na(df[1,1])

is.na(df[2,1])

mean(df$km)

mean(na.omit(df$km))

na.omit(df$km)

mean(df$km,na.rm = T)

na.omit(df)

 df[2,1]<-4.84
 df[4,4]<-125

df

df<-read.table("https://raw.githubusercontent.com/nmeraihi/data/master/exemple_2_2.txt", header=T, sep = ",")
df

df[is.na(df)] <- 0

df
