
A<- matrix(c(6,8,1,1,4,2), nrow = 2, ncol = 3)

A

t(A)

vec<-1:5

t(vec)

dim(vec)

dim(t(vec))

A[1,3]

A

A[1,4]

A[,1]

B<-matrix(seq(1,9.5,.5), 3)

B

B[,c(2,4)]

B<-t(B)

B

B[c(3,5),]

diag(5)

A**2

B/2

C<-B*2

B+C

A<-matrix(c(30,32,31,27,36,72,60,78,67,71,55,57,56,55,49),ncol=3)
A

A<-round((A-32)/1.8,0)
A

colnames(A)<-c("Fairbanks","San Francisco","Chicago")

rownames(A)<-paste("3/",12:16,sep='')

paste("3/",12:16,sep='___')

A

B<-matrix(c(88,85,83,81,78,62,61,54,60,65,90,92,91,89,90),ncol=3)
colnames(B)<-c("Los Angeles","Seattle","Honolulu")
rownames(B)<-paste("3/",12:16,sep='')

B<-round((B-32)/1.8,0)
B

cbind(A,B)

rbind(A,B)

mat_comb<-cbind(A,B)

c(mat_comb)

mat_comb

min(mat_comb)

max(mat_comb)

range(mat_comb)

sd(mat_comb)

rowMeans(mat_comb)

colMeans(mat_comb)

cor(mat_comb)

summary(mat_comb)

summary(t(mat_comb))

runif(1,0,10)

runif(10,0,1)

x<-runif(100,0,1)
x

x<-matrix(x, 10)
x

set.seed(2)

runif(2,0,1) 

runif(2,0,1) 

runif(2,0,1) 

set.seed(2)

runif(2,0,1) 

runif(2,0,1) 

runif(2,0,1) 

sample(1:10,5)

sample(x,5)

sample(x,5)

sample(x,length(x)+1)

sample(0:1, 100, replace = T)

sample(state.name, 5)

s<-sample(1:5, 1000, replace=T, prob=c(.2,.2,.2,.2,.2))
s

table(s)

s<-sample(1:5, 1000, replace=T, prob=c(.2,.5,.1,.1,.1))
table(s)

rnorm(1)

rnorm(1, 0, 100)

x<-rnorm(100, 0, 100)

mean(x)

sd(x)

x<-rnorm(10000, 0, 100)
mean(x)

sd(x)

x<-array(1:24, dim=c(3,4,2))

x

(x <- list(taille = c(1, 5, 2), utilisateur = "Mike", new = TRUE))

x[1]

x[[1]]

x$taille

x$utilisateur

villes <-c("Montréal", "Québec", "Laval")
Population <-c(1942044, 585485, 430077)
village <-c(F,T,T)

donnees_ville <-data.frame(villes, Population, village)

donnees_ville

attributes(donnees_ville)

 donnees_ville[,1]

 donnees_ville[,2]

 donnees_ville[2,1]

donnees_ville$Population

 donnees_ville <-data.frame(villes, Population, village, stringsAsFactors=F)

donnees_ville

 donnees_ville$villes   

str(donnees_ville)

df<-donnees_ville

summary(df)

require(MASS)

data(Cars93)

class(Cars93)

str(Cars93)
