library(googleVis)

Fruits

salesByYear <- aggregate(Sales~Year+Fruit,Fruits,sum)
salesByYear

vx <- set(salesByYear$Year)

vy_apple<-subset(salesByYear, Fruit == "Apples")$Sales
vy_Orange<-subset(salesByYear,Fruit == "Oranges")$Sales
vy_Banana<-subset(salesByYear,Fruit == "Bananas")$Sales

vy_apple
vy_Orange
vy_Banana


plot(vy_apple, type = "o", lwd="2", col = "#ee7777", main="Sales", ylim=c(70,130), xlab ="YEAR", ylab = "Sales", axes=F)
axis(2, ylim=c(0,200))
axis(1, at = 1:3, lab = c("Apple","Orange","Banana"))

lines(vy_Orange, type = "o", lwd="2", col = "#ffa500")
lines(vy_Banana, type = "o", lwd="2", col = "#eeee55")

legend(2.25, 130, c("Apple","Orange","Banana"), col = c("#ee7777","#ffa500","#eeee33"), lty=1, lwd=7)

