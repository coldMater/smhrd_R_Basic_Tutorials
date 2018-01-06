x <- c(0,1,2,3)
p <- c(0.1,0.65,0.20,0.05)
sum(p*x) #∑xP(X=x)

car.var <- sum((x-weighted.mean(x,p))^2*p)
var <- car.var
sqrt(var)

dbinom(x=8,size=10,prob=0.9)
dbinom(x=8,size=10,prob=0.1)


dbinom(x=c(0:5),size=5,prob=0.2)

c<-dbinom(c(0:100),size=100,prob=0.8)


#대출 승인 횟수 예제
barplot(c)
n<-20
p<-0.75
mu <- n*p
sigma <- sqrt(n*p*(1-p))
c(mu,sigma)
x20<-c(0:20)
p20<-dbinom(x=x20,size=n,prob=p)
names(p20)<-x20
round(p20,4)
barplot(p20)

#건설현장 예제 (무더운 여름날 결근확률 10%, 10명을 조사할 때
#여기에서 확률 변수는? 이산형인가, 연속형인가? 
#확률변수는 '결근한 사람의 명수'의 의미를 갖는 x

p <- dbinom(c(0:10),size=10,prob=0.9)
names(p)<-c(0:10)
p
barplot(p)

barplot(dbinom(c(0:10),size=10,prob=0.9))

dpois(x=5,lambda = 2.75)
ppois(q=2,lambda = 2.75)
help(ppois)
