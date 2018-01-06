ex1 <- c (6.5, 4.0, 7.1, 8.3 ,5.4,7.6,9.0,15.7,16.7,6.4,5.0,8.5,5.7,7.7,7.2,12.4,7.1,5.5,9.7,4.4,7.0,6.3,8.3,6.9,5.7,7.6,7.9,7.9,6.0,8.2,10.4,9.9,3.9,9.8,8.2,5.6,7.9,6.4,7.4,7.0,13.0,8.7,6.4,6.7,7.4)
head(ex1)


#breaks : 각 도수의 상한값과 하한값을 지정)
#right	: logical, indicating if the intervals should be closed on the right (and open on the left) or vice versa.


ex1.cut <- cut(ex1,
               breaks = seq(3.0,18.0,by=3.0),
               right = FALSE, 
               labels = c("3.0이상 6.0미만",
                         "6.0이상 9.0미만",
                         "9.0이상 12.0미만",
                         "12.0이상 15.0미만",
                         "15.0이상 18.0미만"))
#도수분포표
ex1.table <- table(ex1.cut)

#상대도수분포표
prop.table(ex1.table)

#도수분포표와 상대도수분포표 묶기
cbind(ex1.table, prop.table(ex1.table))
