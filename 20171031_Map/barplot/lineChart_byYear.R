list.files()
count_origin <- read.csv("barplot/연도별요양기관별보험청구금액_2004_2013.csv")
count_origin
color = rainbow(10)
rownames(count_origin) <- count_origin[,1]
count_origin <- count_origin[,-1]
count_origin <- count_origin[,-5]
count_origin <- round(count_origin/1000000)
count_origin

rownames(count_origin)
plot(count_origin[,1], ylim = c(0,10000), type = "o", axes=F, lwd = 2, pch=19, col = color[1], xlab="", ylab="", 
     main = "보건 기관 보험 등록 건수 추이")
axis(1, at=1:10, labels =(rownames(count_origin)))
axis(2,las=2)

for(i in 2:10){
  lines(count_origin[,i], ylim = c(0,10000), type = "o", axes=F, lwd = 2, pch=19, col = color[i], xlab="", ylab="")
}

abline(h=seq(0,10000,1000), v = seq(0,10,1), lty=3, lwd=0.2, col = "gray")
legend(1,10000,colnames(count_origin), fill = color)
