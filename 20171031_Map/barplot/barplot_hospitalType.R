library(RColorBrewer)
color = brewer.pal(9,"Accent")
display.brewer.all()

setwd("barplot/")
  data_origin <- read.csv("2013년_서울_주요구별_병원현황.csv")
hospital_typeVector <- data_origin$표시과목
#hospital_typeVector <- c(t(data_origin[1]))

data_matrix <- as.matrix(data_origin[-1])
#대신 rownames 써보기
#hospital_typeVector <- rownames(data_origin)


barplot(data_matrix, beside = T, ylim = c(0,350), col = color)
abline(h=seq(0,350,50), lty=1, lwd=0.2, col = "gray")
legend(64,350, hospital_typeVector, fill = color, trace =T)

