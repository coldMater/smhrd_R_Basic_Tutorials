install.packages("ggplot2")
library(ggplot2)

list.files()
setwd("1101 6차시_ggplot()")

korean_score <- read.csv("학생별국어성적_new.csv")
korean_score

#ggplot(korean_score, aes(x=이름, y=점수)) + geom_point()
ggplot(korean_score, aes(x=이름, y=점수)) + geom_bar(stat = "identity", fill = "pink", color = "gray") + theme(axis.text.x = element_text(angle=45, hjust=1.2, vjust=1, colour = "pink", size=15))