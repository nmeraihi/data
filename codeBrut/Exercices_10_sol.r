
options(repr.matrix.max.cols=8, repr.matrix.max.rows=5)

path<-"https://raw.githubusercontent.com/nmeraihi/data/master/"

df<-read.csv(paste(path,"qc_hommes_2.csv",sep = ""), sep=",")

head(df)

tail(df)

df$age<-gsub("ans", "", df$age)
df$age<-gsub("an", "", df$age)

a<-df[-nrow(df), 2]-df[-1, 2]
a<-c(a, a[length(a)])
df$dx<-a

df$qx<-round(df$dx/df$lx,5)

head(df)

age<-22
t<-3
p<-df[age+1+t,2]/df[age+1,2]
p

library(formattable)

percent(p)

Id=c(1,2,3,4)
Age=c(14,12,15,10)
Sex=c('F','M','M','F')
Code=c('a','b','c','d')
df1=data.frame(Id,Age)
df2=data.frame(Id,Sex,Code)

df1

df2

M=merge(df1,df2,by='Id')
M

path<-"https://raw.githubusercontent.com/nmeraihi/data/master/"

df_app <-read.csv(paste(path,"AAPL_month.csv",sep = ""), header = T)

df_ba <-read.csv(paste(path,"BA_month.csv",sep = ""), header = T)

a<-cbind(df_app$Adj.Close,df_ba$Adj.Close)

colnames(a)<-c("Apple", "Boeing")

rownames(a)<-seq(as.Date("2016/11/1"), by = "month", length.out = 12)

cor(a)

library(dplyr, warn.conflicts = F)

values <- read.csv(paste(path,"HackerRank-Developer-Survey-2018-Values.csv",sep = ""), header = T, stringsAsFactors = F)

head(values)

values_2<-values %>% 
    group_by(q3Gender) %>%
        filter(q3Gender %in% c('Male','Female'))%>% 
            count()

values_2$n<-(values_2$n/ sum(values_2$n)) * 100
values_2

values$is_student <- ifelse(values$q8Student == '','Yes','No')

values %>% group_by(q3Gender, is_student) %>% 
    filter(q3Gender %in% c('Male','Female')) %>% 
    count() %>% 
    ungroup() %>% 
    group_by(is_student) %>% 
    mutate(n = (n/ sum(n)) * 100)

values %>% group_by(CountryNumeric2) %>% count() %>% head()

values %>%
            filter(!is.na(q4Education))%>%
            group_by(q4Education)%>%
            summarise(Total = n())%>%
            arrange(desc(Total))  %>%
            mutate(q4Education = reorder(q4Education,Total)) %>%
            head(10)

values %>%
            filter(!is.na(q1AgeBeginCoding)) %>%
            group_by(q1AgeBeginCoding) %>%
            summarise(Total = n()) %>%
            arrange(desc(Total)) %>%
            mutate(q1AgeBeginCoding = reorder(q1AgeBeginCoding,Total)) %>%
            head(10)
