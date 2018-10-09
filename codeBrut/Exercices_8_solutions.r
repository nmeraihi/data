
pi

round(pi,3)

round(pi, 5)

vec1<-1:12
vec1

vec1<-c(vec1, 16:18)
vec1

seq(0,5,.5)

vec3<-seq(2,50, 2)
vec3

1:8

A<- matrix(c(1:8), nrow = 2, ncol = 4)
A

B<- matrix(c(1:8), nrow = 2, ncol = 4, byrow = T)
B

matrix(vec3, nrow = 5)

mat<-diag(7)
mat

apply(diag(7), 2, rev)

mat <- mat[ nrow(mat):1, ]
mat

pop<-matrix(c(1718241,1735096,1746940,1767753,
              530474,533857,536013,538918,
              417325,421959,425481,429413,
              274180,276290,278050,281392), ncol=4, byrow = T)

pop

rownames(pop)<-c("Montréal", "Québec", "Laval", "Gatineau")
colnames(pop)<-2013:2016

pop

vec_HOMA<-c(20000, 20500, 23000, 23800)
HOMA<-matrix(vec_HOMA, ncol=4, )
rownames(HOMA)<-c("HOMA")
colnames(HOMA)<-2013:2016
HOMA

pop[1,]-vec_HOMA

pop[1,]<-pop[1,]-vec_HOMA
pop

rbind(pop,HOMA)
