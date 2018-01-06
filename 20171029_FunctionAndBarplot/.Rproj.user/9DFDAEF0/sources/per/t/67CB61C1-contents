# vector 생성 vec1 : (1~5) vec2 : (a~e)

vec1 <- c(1:5)
vec2 <- c("a","b","c","d","e")

vec1
vec1

max(vec1)
max(vec2)

min(vec1)
min(vec2)

sum(vec1)
mean(vec1)

install.packages("googleVis")
library(googleVis)

### aggregate
aggregate(Sales~Year, Fruits, sum)
aggregate(Sales~Fruit, Fruits, sum)

aggregate(Sales~Year+Fruit, Fruits, sum)
aggregate(Profit~Location+Fruit,Fruits,sum)

aggregate(Sales~Year,Fruits,mean)
aggregate(Sales~Year,Fruits,mean)

### apply
mat1 <- matrix(1:6,nrow=2,byrow=T)
apply(mat1, 1, sum)
apply(mat1, 2, mean)

mat1 <- rbind(mat1,apply(mat1,2,mean))
mat1

mat1 <- cbind(mat1, apply(mat1,1,max))
mat1

colnames(mat1)<-c("Java","Web","Android","Max")
mat1

rownames(mat1)<-c("AAA","NNN","CCC")
mat1

mat1 <- mat1[,-4]
mat1

apply(mat1[1:2,],1,max)

#해당 데이터를 명시해주어야 하는 경우
tapply(Fruits$Sales, Fruits$Year, mean)

#attach 메소드를 사용하여 어떤 데이터를 사용할 것인지 로드
#이 경우에 Fruits$ 를 표시해주지 않아도 된다. 
attach(Fruits)
tapply(Sales, Year, mean)



###CSV 파일 불러와서 년도별 합계 및 연령대별 합계값 각각 출력하기
setwd("D:/Rvisualize/FunctionAndBarplot")
list.files()
data1 <- read.csv("data1.csv")
 
rownames(data1)<-data1$연령별

#rownames(data1)<-c(data1[1])
data1

data1<-data1[,-1]
data1

apply(data1,2,sum)
apply(data1,1,sum)
