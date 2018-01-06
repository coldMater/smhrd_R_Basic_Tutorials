library(wordcloud)
library(RColorBrewer)
library(KoNLP)

setwd("D:/새 폴더/1025 1차시_설치,자료형,기본구조,워드클라우드")
list.files()

review = readLines("review.txt")

useSejongDic()

###사전에 단어 추가, 텍스트파일에 단어 리스트 저장하여 for 문으로 읽어오
mergeUserDic(data.frame(c("존잼"),c("ncn")))

add_dic <- readLines("word_list.txt")
add_dic

for (i in 1:length(add_dic)){
  mergeUserDic(data.frame(add_dic[i], c("ncn")))  
}

###사전에 단어를 추가한 뒤 sapply 를 통해 명사를 추출한다.
data <- sapply(review, extractNoun, USE.NAMES = F)
data

data_unlist <- unlist(data)
data_unlist

###원하지 않는 단어를 삭제하기
data_unlist = gsub("영화","",data_unlist)
data_unlist = gsub("하게","",data_unlist)
data_unlist = gsub("해서","",data_unlist)

data_unlist

###글자수가 1개 이하인 문자는 삭제하기
data_unlist <- Filter(function(x){nchar(x) >= 2}, data_unlist)

wordcount <- table(data_unlist)
wordcount

wordcount_top30 <- head(sort(wordcount, decreasing = T), 50)
wordcount_top30

#지정 열을 없애주기(ㅋ, ㅎ같은 것들이 포함되어있었다.)
wordcount_top30<-wordcount_top30[-33]
wordcount_top30<-wordcount_top30[-37]
wordcount_top30

pal = brewer.pal(9,"Spectral")
display.brewer.all()

wordcloud(names(wordcount_top30),wordcount_top30, col = pal, random.order=F, scale = c(3,1))

??wordcloud
