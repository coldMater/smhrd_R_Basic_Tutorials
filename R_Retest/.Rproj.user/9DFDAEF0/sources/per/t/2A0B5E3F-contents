library(ggplot2)

list.files()
score_All <- read.csv("학생별전체성적_new.csv")

ggplot(score_All, aes(x=물리, y=수학)) + geom_point(color = "#3355cc", aes(size = score_All$물리)) + geom_line()

