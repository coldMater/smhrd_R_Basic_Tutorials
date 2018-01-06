vx <- c(150,230,80,20,20,5,0,50,40,80,60,90,50,70,20,20,450,20,20,90)
plot(v)

vy<- c(100,80,30,10,20,50,20,40,20,50,60,80,50,20,40,20,50,308,0,20)
plot(vx,vy, main="TEST", xlab = "x", ylab="y", type="o", lty ="longdash", col="#33aaaa", pch=19, ="#222222")

vday<- c("MON","TUE","WED","THU","FRI")

vprice<- c(100,130,120,160,150)

plot(vprice, type = "o", lwd="2", col = "#ee7777", main="Fruits", ylim=c(0,200), axis=vday, xlab ="DAY", ylab = "PRICE", axes=F)
#axes = F 속성을 주고 새로운 축을 준다.
     
axis(2, ylim=c(0,200))
axis(1, at = 1:5, lab = vday)
#lab 는 labels 의 약어이며 풀네임, 약어 둘 다 쓸 수 있다. 

par(mfrow=c(1,3))

pie(v1)
barplot(v1)
