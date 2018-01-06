##### 준비작업

setwd("D:/새 폴더/1025 1차시_설치,자료형,기본구조,워드클라우드/")

list.files()

input1 <- readLines("president.txt")
input1

#install.packages("RColorBrewer") #이미 설치되었으므로 주석처리하였다.
#install.packages("wordcloud") #이미 설치되었으므로 주석처리하였다.
install.packages("KoNLP")

library(wordcloud)
library(RColorBrewer)
library(KoNLP)

useSejongDic()


##### 명사추출
data <- sapply(input1, extractNoun, USE.NAMES = F) #input1 벡터를 extractNoun 함수에 적용 
#USE.NAMES = F 옵션은 원본을 없애준다. 
data
data_unlist <- unlist(data)
data_unlist

word_count <- table(data_unlist)
word_count

head(sort(word_count, decreasing = T), 10)

display.brewer.all()
pal <- brewer.pal(9, "Set3")
wordcloud(names(word_count), word_count, col = pal, random.order = F)

