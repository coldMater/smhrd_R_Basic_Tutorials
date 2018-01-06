library(ggplot2)
library(RColorBrewer)
display.brewer.all()
pal <- brewer.pal(6,"Accent")

list.files()
perform <- read.csv("상반기사원별월별실적현황_new.csv" )

#perform_ratio <- cbind(perform, 달성률 = apply(perform[,3:4], 2, round(실적금액/목표금액)*100))
#ddply 를 사용하여 달성률 컬럼을 추가할 수는 없을까?
#답은 먼저 펑션을 정의하는 것이다. 다음은 그 코드이다. 

##################################
## apply() 와 function 이용하기 ##
##################################

ratio <- function(x){
  return (round((x[1]/x[2])*100, 1))
}

perform_ratio <- cbind(perform, 달성률=apply(perform[,3:4],1,ratio))
perform_ratio

###################################
## ddply() 이용하기              ##
###################################

perform_ratio <- ddply(perform, "이름", transform, 달성률 = round((실적금액/목표금액)*100))

ggplot(perform_ratio, aes(x=월, y=달성률, color = 이름, group=이름)) +
geom_line(lwd = 1) + 
geom_point(size=2) + 
geom_hline(yintercept = 100, color = "red", lwd = 1.2) +
scale_colour_manual(values=pal)

??apply
