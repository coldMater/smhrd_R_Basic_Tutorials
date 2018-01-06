publicArea <- read.csv("광주광역시_공공시설개방정보_20150918.csv")

install.packages("ggmap")
library(ggmap)

imap <- get_map("kwangju", zoom = 12, maptype = "roadmap")#maptype : roadmap, hybrid, satellite, terrain
ggmap(imap)

ggmap(imap) + 
  geom_point(data = publicArea, aes(x=경도, y=위도), size = 2, color = "red", alpha = 0.3) +
  geom_text(data = publicArea, aes(x=경도, y=위도+0.005), label = publicArea$개방시설명, size = 2)
