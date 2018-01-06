library(ggmap)
library(ggplot2)

# 전국 자전거 사고 데이터 시각화
#----------------------------------------------------------------------------#

crash <- read.csv("2016년_자전거사고다발지.csv")
crash2 <- crash[,7:14]
crash3 <- cbind(crash2, 총합 = apply(crash2[,1:6],1,sum))

map_korea <- get_map("seongju", zoom = 7, maptype = "roadmap")
ggmap(map_korea) +
  geom_point(data=crash3, aes(x=경도, y=위도, color = 총합, size = 총합)) +
  scale_color_gradient(low = "white", high="red")

# 서울특별시의 자전거 사고 데이터 시각화
#----------------------------------------------------------------------------#

grep("서울특별시", crash$다발지명)
#벡터 형태로 해당 문자를 포함하는 행의 번호를 모두 반환

seoul <- crash[grep("서울특별시", crash$다발지명),]
seoul

seoul2 <- seoul[,7:14]
seoul3 <- cbind(seoul2, 총합 = apply(seoul2[,1:6], 1, sum))

map_seoul<- get_map("seoul", zoom = 11, maptype = "roadmap")
ggmap(map_seoul) +
  geom_point(data = seoul3, aes(x=경도, y= 위도, color = 총합, size = 총합), size = 5) +
  scale_color_gradient(low = "white", high = "blue")

# path 연결하여 경로 추적
#----------------------------------------------------------------------------#
ggmap(map_seoul) + 
  geom_point(data=seoul3, aes(x=경도, y=위도), size = 1, color = "red", alpha =0.5) +
  geom_path(data=seoul3, aes(x=경도, y=위도), linetype = 3, col = "blue")

