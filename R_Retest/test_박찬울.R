library(ggplot2)
library(plyr)
data_origin <- read.csv("data.csv");
data_origin

data_frame <- aggregate(건수~요일,data_origin,sum);
arrange(data_frame, desc(건수))

ggplot(data_origin,aes(x=요일,y=건수, color=범죄종류, group = 범죄종류)) + geom_line(lwd = 2) + geom_point(size=1.5)

       
