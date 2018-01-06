#######################
### 원작자 : 안영만 ###
#######################

library(ggplot2)
library(plyr)
list.files()
test <- read.csv("2014년 범죄발생 시간대별(구분없음).csv")
date <-c("오전","오전","오전","오전","오후","오후","오후","오후")
test<- data.frame(test,구분=date)
test
test2<-aggregate(발생건수~범죄중분류+구분,test,sum)
test2
test2_sort<- ddply(test2,"범죄중분류",transform,총건수=sum(발생건수) )
test2_sort
test3_sort<-head(arrange(test2_sort,desc(총건수)),20)
test3_sort
ggplot(test3_sort,aes(x=범죄중분류,y=발생건수,fill=구분))+geom_bar(stat="identity")+geom_text(aes(y=총건수+10000,label=paste(총건수,"건")),color="black",size=3)