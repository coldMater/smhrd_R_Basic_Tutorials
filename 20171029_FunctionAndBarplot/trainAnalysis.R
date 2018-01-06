setwd("D:/Rvisualize/FunctionAndBarplot")
data <- read.csv(list.files()[1])
data

#aggregate 함수를 이용한 노선번호별 승차 인원수의 합계
aggregate(in.~line_no,data,sum)
#위와 동일한 연산을 tapply 이용해서 해보기
tapply(data$in.,data$line_no,sum)

#aggregate 함수를 이용한 노선별 하차 인원수의 합계 #aggregate 은 결과가 dataframe
aggregate(out~line_no,data,sum)
#위와 동일한 연산을 tapply 와 attach 함수 사용해서 해보기 #tapply 는 결과가 array
attach(data)
tapply(in.,line_no,sum)


#노선번호 상관없이 승차 하차 인원수의 합계
apply(data[-1][c(2,3)],2,sum)

#노선번호별 승하차 인원수의 합계
line<-aggregate(in.+out~line_no,data,sum)

attach(data)
tapply(in.+out,line_no,sum)
       

#차트 그리기(matrix 로 변경이 필요하다.)
barplot(as.matrix(line$'in. + out'), main = "노선번호별 승하차 인원수", ylab = "인원수", col = rainbow(4), ylim = c(0,100000000), beside=T, space = 0.5)



###함수 정의
func <- function(a,b){
  c<-a+b
  return(c)
}

### 두 점 사이의 거리 구하는 메소드 만들어보기

distance <- function(a,b){
  if(a>b){
    c<-a-b
  } else {
    c<-b-a
  }
  return(c)
  #return(abs(a-b))
}

distance(3,10)
distance(10,3)
