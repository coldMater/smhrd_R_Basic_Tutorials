v1<-1:5
barplot(v1)
barplot(v1, horiz=T,col = rainbow(30))

#2차원 데이터 표현하기
m1 <- matrix(c(5,4,3,2), nrow = 2, byrow = T)
barplot(m1, names = c("col1","col2"), col = c("#55ee55","#eeee55"), beside=T)

Banana <- c(100,120,140,160,180)
Cherry <- c(120,130,150,140,170)
Orange <-  c(140,170,120,110,160)

df <- data.frame(Banana,Cherry,Orange)
df
fm <- as.matrix(df)
fm

par(mfrow=c(1,1))
barplot(fm, beside=T, ylim = c(0,300), col =rainbow(nrow(fm)))
legend(14,300,c("MON","TUE","WED","THU","FRI"),fill=rainbow(nrow(fm)))

t(fm)       

fm2 <- t(fm)
fm2
barplot(fm2, names = c("MON","TUE","WED","THU","FRI"), col = rainbow(nrow(fm2)),beside = T, ylim = c(0,250))
