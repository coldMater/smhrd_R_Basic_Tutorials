age <- c(18,21,22,19,34,32,40,42,56,58,64,28,29,29,36,35)
age_stem <- stem(age)

stat <- c(88,67,76,80,86,94,78,84,82,75,80,75,65,84,78,82,81,60,87)
stat_mean <- mean(stat)
stat_length <- length(stat)
stat_min <- min(stat)
stat_max <- max(stat)
stat_median <- median(stat)

c(stat_min, stat_max, stat_length, stat_mean)
summary(stat)

data3 <- c(1,2,2,2,2,3,3,4)
table(data3)

#가중치 평균
data4 <- c(72,67,60,78,82)
range <- max(data4) - min(data4)
range

variance <- var(data4)
stdev<- sd(data4)
CoOfVar<- sd(data4)/mean(data4) * 100

#왜도
data <- c(136,182,166,132,130,186,140,155)
quantile(data)
quantile(data,0.3)

#BoxPlot
data <- c(38,74,13,58,26,155,80,26,51,46,19,134,69,30,39,29,37,47,9,52)
boxplot(data,horizontal = TRUE)
quantile(data)