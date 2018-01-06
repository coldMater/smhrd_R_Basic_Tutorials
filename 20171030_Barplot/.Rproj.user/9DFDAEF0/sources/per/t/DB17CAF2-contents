########### DataFrame ###########

No <- c(1,2,3,4) #c(1:4)
Name <- c("Apple","Peach","Banana","Grape")
Price <- c(500,200,100,50)
Qty <- c(5,2,4,7)

sales <- data.frame(NO = No, NAME = Name, PRICE = Price, QTY = Qty)
#sales <- data.frame(No,Name,Price,Qty)
sales

#데이터 프레임에서 자료 추출하기
sales$NO
sales$NAME
sales[,3]
sales[1,]
sales[3]

sales[c(1,2),]
sales[1:2]
sales[1:3]

sales_price <- subset(sales, QTY>=5)
sales_price

sales_price <- subset(sales, NAME=="Apple")
sales_price
  
subset(sales, select = c("NAME","PRICE","QTY"))

names(sales)

subset(sales, select = -PRICE)
colnames(sales) <- c("번호","이름","가격","재고")


sales <- rbind(sales, data.frame(번호= 5,이름 = "kiwi",가격 = 150, 재고 = 10))

sales


nrow(sales)               
ncol(sales)
