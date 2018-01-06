x <- 3
y <- "이름"

a <- 3 -> b #대입연산자는 이와같이 확인

class(x)  #타입 확인
class(y)

Sys.Date()  #현재날짜
Sys.time()  #현재시간

??Date

########## 10월 25일##########
as.Date(10, origin = "2017-10-25")  #오늘날짜로부터 10일 뒤
as.Date(-100, origin = "2017-10-25") 
as.Date("2017-10-25") - as.Date("2008-09-15") #날짜를 생서할 때는 as.Date 라는 메소드를 사용한다.

vec1 <- c(10,20,30)
vec1
vec2 <- c("찬울","송하","희정","경도",30,40,50,60,80,90)
# 문자와 숫자를 동시에 벡터에 넣으면 숫자가 문자로 바뀐다. 

vec3 <- seq(1,15)
vec4 <- 1:15

vec3 <- seq(1,15,2)
vec5 <- seq(1,100, by = 5)
vec5

vec6 <- seq(1,100,length.out = 5)
# 총 5개의 값(1,25.8,50.5,75.2,100)을 기준으로 4구역으로 나눈다. 

vec7 <- 1:3
vec7
rep(vec7, times=3) #vec7 을 3번 반복한다. 
rep(vec7, each=3) #vec의 원소별로 3번씩 출력한다. 
rep(vec7, times=3, each=2) #times와 each를 중복 사용하는 것도 가능하다. 


#벡터에서 값을 뽑아오기
vec3[5]
vec3[c(3,5)]
vec3[5:10]
vec3[c(5:10)]
vec3[c(5:length(vec3))] #5번부터 vec3의 크기까

vec3[-c(5:length(vec3))] #원하는 데이터를 제외하려면 "-"를 붙여준다.
vec3[-c(2,3,6)]
vec8<-vec3[vec3>10]

vec3[c(3,5)] <- 20
vec3[c(3,5)] <- c(20,40)
vec3[c(5,3)] <- vec3[c(3,5)]

vec9 <- c(vec8, vec5) #벡터의 값을 바꾸기

vec10 <- vec1+vec7 #벡터의 길이가 같을 때 연산이 가능하다. 
vec10<- vec10 -5 #일괄적으로 값을 빼주기

union(vec5, vec7) #합집합(중복 제거하고 두 벡터의 값을 합치기)
setdiff(vec5, vec7) #차집합(벡터 5에서 벡터 7의 원소를 삭제)
#차집합은 제외하고 싶은 단어들을 삭제하고 싶을 때 사용할 수 있다. 

setdiff(vec7,vec5)

7 %in% vec5 #벡터가 7을 포함하고 있는지 

7 %in% vec3


### 실습1 ###
vec1 = c("사과","배","감","버섯","고구마")
vec1[-3]
vec[-c(3)]


### 실습2 ###
season1 = c("봄","여름","가을","겨울")
season2 = c("봄","여름","늦여름","초가을")

union(season1,season2)
setdiff(season1,season2)
intersect(season1,season2)
