library(ggplot2)

list.files()
count_subway <- read.csv("서울지하철_5-8호선_이용현황_시간대별.csv")

ggplot(count_subway, aes(x=시간, y=(승차인원+하차인원), color = 호선명, group=호선명)) + geom_line(lwd = 1) + geom_point(size=2)

#DataFrame 가공하는 여러가지 방법
count_subway <- ddply(count_subway, "호선명", transform, 승하차총합 = 승차인원+하차인원)
metro <- cbind(count_subway, 총원 = apply(count_subway[,3:4], 1, sum))