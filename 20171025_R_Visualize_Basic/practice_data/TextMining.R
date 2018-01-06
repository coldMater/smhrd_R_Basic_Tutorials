setwd("D:/R_data/1025 1차시_설치,자료형,기본구조,워드클라우드")
input1 <- readLines("fruit.txt")
input1

input2 <- read.table("fruit.txt") #테이블 형태로 저장된 데이터를 데이터프레임으로 만들어준다.
input2 # 그러나 열이름들이 1번 행으로 들어가버렸다. 

input2 <- read.table("fruit.txt", header = T)
input2

fruit <- read.csv("fruit.csv") #read.csv 는 자동으로 첫 행을 컬럼명으로 인식한다. 
fruit

fruit <- read.csv("fruit.csv", header = F, col.names = c("NO", "NAME", "PRICE", "QTY"))
fruit

annualIncomeKIATigers <- read.csv("기아타이거즈연봉.csv")
annualIncomeKIATigers

install.packages("wordcloud")
library(wordcloud)


word <- c("서울특별시", "부산광역시", "광주광역시","대전광역시","화순군","나주시","뉴욕")
fre <- c(1400,600,140,300,20,30,2000)

wordcloud(word, fre, scale = c(2,1), random.order
=F, color = pal[5:9], random.color
=F)

install.packages("RColorBrewer")
library(RColorBrewer)
display.brewer.all()

brewer.pal(5, "Blues") #결과는 벡터로 저장된다. 
pal<- brewer.pal(9, "YlOrRd")
pal
pal[5:9]

playerName = subset(annualIncomeKIATigers,select = "선수명")[,]
#playerName = annualIncomeKIATigers$선수명
annualIncome = subset(annualIncomeKIATigers,select = "연봉")[,]
#playerName = annualIncomeKIATigers$연봉



wordcloud(playerName,annualIncome, random.order=F, scale = c(4,1), random.color = F, color = pal[3:9])
