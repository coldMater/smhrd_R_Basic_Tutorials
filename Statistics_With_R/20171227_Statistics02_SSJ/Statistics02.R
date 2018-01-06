cafe_data <- read.csv("data/cafedata.csv", header = T, na.strings = "na")
coffee_info <- sort(cafe_data$Coffees)
coffee_info
#커피 필드 오름차순 정렬
sort(coffee_info, decreasing = F)

#커피 판매량 최댓값
max(coffee_info)

#커피 판매량 최솟값
min(coffee_info)

#커피 판매량 평균
mean(coffee_info)

#커피 판매량 중앙값
median(coffee_info)

#커피 판매량 줄기 잎 
stem(coffee_info)

#커피 판매량 분산(표준편차)
var(coffee_info)
sd(coffee_info)

#주스와 커피의 변동계수 (쥬스의 변동계수가 큰데, 이는 쥬스가 더 환경에 영향을 많이 받아 판매량의 변화가 큰 것으로 판단할 수 있다.)
juice_info = sort(cafe_data$Juices)
(sd(juice_info)/mean(juice_info))*100
(sd(coffee_info)/mean(coffee_info))*100

#커피의 사분위수
quantile(coffee_info)

#상자도표
boxplot(coffee_info)
