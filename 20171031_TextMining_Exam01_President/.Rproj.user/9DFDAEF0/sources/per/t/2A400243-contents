setwd("D:/Rvisualize/TextMining_Exam01_President")
list.files()

txt <- readLines("kakaotalk.txt", encoding = "UTF-8")
txt

library(wordcloud)
library(RColorBrewer)
library(KoNLP)

for (i in 1:length(add_dic)){
  mergeUserDic(data.frame(add_dic[i], c("ncn")))  
}

useSejongDic()

data <- sapply(txt, extractNoun, USE.NAMES = F)
data
class(data)

data_unlist = unlist(data)
data_unlist

data_unlist <- Filter(function(x){nchar(x) >= 2}, data_unlist)

wordcount = table(data_unlist)
wordcount

final <- head(sort(wordcount, decreasing = T), 200)

final <- final[-c(7:9)]
head(final,30)
pal = brewer.pal(9,"Paired")

wordcloud(names(final),final, random.order = F, col = pal)
