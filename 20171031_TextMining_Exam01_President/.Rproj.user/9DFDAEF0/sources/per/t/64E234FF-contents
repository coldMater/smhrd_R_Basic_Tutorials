v1 <- c(150,130,160,100,180) #사과판매량
v2 <- c(120,150,100,80,20)  #키위판매량
v3 <- c(80,20,30,10,50) #포도판매량

#par(mfrow=c(1,1)) #화면 초기화 코드

plot(v1, type = "o", lwd="2", col = "#ee7777", main="Fruits", ylim=c(0,300), axis=vday, xlab ="DAY", ylab = "PRICE", axes=F)
axis(2, ylim=c(0,200))
axis(1, at = 1:5, lab = vday)

#줄을 추가시키는 메소드

lines(v2, type="o", lwd="2", col = "#77ee77")
lines(v3, type="o", lwd="2", col = "#7777ee")
legend(3, 300, c("딸기","키위","포도"), col = c("#ee7777","#77ee77","#7777ee"), lty=c(1,2,3), lwd=c(5,4,3))
