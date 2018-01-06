setwd = "D:/Rvisualize/barplot/"
list = readLines("제주도여행지.txt")
subLoc = readLines("제주도여행코스gsub.txt")
info = readLines("jeju.txt")

library (RColorBrewer)
library(KoNLP)

useSejongDic()


for (i in 1:length(list)){
  mergeUserDic(data.frame(list[i],c("ncn")))
  print(paste(list[i],"사전에 추가"))
}

data <- sapply(info, extractNoun, USE.NAMES = F)
data


data_unlist <- unlist(data)
head(data_unlist)

for (s in 1:length(subLoc)){
  data_unlist <- gsub(subLoc[s],"",data_unlist)
}

data_filter <- Filter(function(x){nchar(x) >= 2}, data_unlist)

for(s in 1:length(data_filter)){
  data_filter <- gsub("[^[:alpha:]]","",data_filter)
}

data_filter <- Filter(function(x){nchar(x) >= 2}, data_filter)
#공백으로 바꾸어줘서 공백이 58개가 된다. 따라서 그 공백을 없앨것이다. 

data_count <- table(data_filter)
1:10
top10 <- head(sort(data_count, decreasing=T),10)

pie(top10,
    radius = 1, 
    init.angle = 0, 
    colckwise = T, 
    col = rainbow(10), 
    labels = names(top10))
