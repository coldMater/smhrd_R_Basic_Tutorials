library(RColorBrewer)
color = brewer.pal(9,"Pastel1")
display.brewer.all()

setwd("barplot/")
data_origin <- read.csv("2013년_서울_주요구별_병원현황.csv")

row.names(data_origin) <- data_origin$표시과목

data_process <- data_origin[-1]
data_process
data_matrix <- as.matrix(data_process)
data_matrix


#아래 코드는 동일한 자료를 barplot 으로 그리는 코드이다.
#for(i in 1:10){
#  barplot(data_matrix[,i], ylim=c(0,350), col = color, main = paste(colnames(data_matrix)[i],"병원현황"), las=2)
#  abline(h=seq(0,350,50), lty=3, lwd=0.2, col = "gray")
#}

par(mfrow=c(2,5))

for(i in 1:10){
  pie(data_matrix[,i], radius = 2.5, col = cm.colors(9), border = cm.colors(9), 
      cex.main=2, main = paste(colnames(data_matrix)[i],"병원현황\n"), 
      labels = paste(rownames(data_origin),
                     func_ratio(i),"%"))
}

# 열의 indexNumber 를 넣어주면 해당 열의 각 행의 백분율 정보를 벡터 형태로 출력해주는 함수
func_ratio<-function(i){

    row = data_matrix[,i]
    colsum = sum(data_matrix[,i])
    return(round((row/colsum)*100,1))
    #리턴을 하지 않아도 마지막 열이 리턴되는듯하다. 
}


