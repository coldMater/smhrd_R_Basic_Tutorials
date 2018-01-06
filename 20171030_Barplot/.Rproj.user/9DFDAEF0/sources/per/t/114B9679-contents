setwd("D:/Rvisualize/barplot/")

list.files()

txt <- readLines("jeju.txt")
txt
gsubList<- readLines("제주도여행코스gsub.txt")
gsubList
tourList <- readLines("제주도여행지.txt")
tourList

library(KoNLP)
useSejongDic()

for(i in 1:length(tourLIst)){
  mergeUserDic(data.frame(tourList[i],c("ncn")))  
}

txt <- sapply(txt, extractNoun, USE.NAMES=F)
txt 

# 현재 txt 는 list 형태이다. 따라서 이것을 unlist 형태로 만들어준다. 
# unlist 후 type 은 character 가 된다. 

txt_unlist <- unlist(txt)
for(i in 1:length(gsubList)){
  txt_unlist <- gsub(gsubList[i] ,"", txt_unlist)
}
txt_unlist <- gsub("[^[:alpha:]]", "", txt_unlist)
txt_unlist <- Filter(function(x){nchar(x)>=2}, txt_unlist)
txt_unlist <- Filter(function(x){nchar(x)<=7}, txt_unlist)

wordcount <- table(txt_unlist)
jejuTop10 <- head(sort(wordcount, decreasing=T),10)


jejuLabel <- paste(names(jejuTop10),
                   "(", 
                   jejuTop10, 
                   "건)\n",
                   round(jejuTop10/sum(jejuTop10)*100,0),"%")


pie(jejuTop10,labels=jejuLabel, col = rainbow(10))
bp <- barplot(jejuTop10, col = rainbow(8), cex.names = 0.5, ylim = c(0,25))

text(bp, y=jejuTop10+0.8, labels = jejuTop10)
text(bp, y=jejuTop10-0.8, labels = round((jejuTop10/sum(jejuTop10)*100),1))

install.packages("plotrix")
library(plotrix)
pie3D(jejuTop10, labels = jejuLabel, explod=0.05, shade = 0.7)

