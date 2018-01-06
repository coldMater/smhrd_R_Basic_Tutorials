library(ggplot2)
library(plyr) #데이터 가공할 때 많이 사용하는 라이브러리 : arrange(), ddply()

list.files()
score_origin <- read.csv("D:/Rvisualize/20171101_ggplot/data/학생별과목별성적_국영수_new.csv")

score_sort <- arrange(score_origin, 이름, 과목)

score_xy <- ddply(score_sort, "이름", transform, "누적합계" = cumsum(점수))
#transform : 새로운 연산을 해서 데이터를 각 행별로 출력
## dd 란 들어가는 데이터와 나오는 데이터가 모두 dataframe 이라는 뜻이다.
score_xy
score_sortxy <- ddply(score_xy, "이름", transform, yPosition = 누적합계 - 점수*0.5)
score_sortxy[0:10]

ggplot(score_sortxy, aes(x=이름, y= 점수, fill = 과목)) + geom_bar(stat="identity") + geom_text(aes(y=yPosition, label=paste(점수)), color = "white", size = 5)
ggplot(score_sort, aes(x=과목, y=점수, color = 이름, group=이름)) + geom_line(lwd = 1.5) + geom_point(size=3)