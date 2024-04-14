v<- c(0.12,-3.1,-2.05,1.52,2.11,4.8,3.4)
n<- length(v)
sum <-0
for(i in (1:n)){
	sum<- sum + v[i]
}
trung_binh_mau <- sum/n
##mean(v)
tong<-0
for(i in (1:n)){
	tong<- tong +(v[i]-trung_binh_mau)^2
}
phuong_sai_mau <- tong/(n-1)
## var(v)


do_lech_chuan<- sqrt(phuong_sai_mau)
##sd(v)


median(v)


BT2----------------------------------------------
v<- c(0.12,-3.1,-2.05,1.52,2.11,4.8,3.4)
QuantileMean <- function(v, q) {
n<- length(v)
sorted_v <- sort(v)
  index <- ceiling((q / 100) * n)
  quantile<- sorted_v[index]
  return(quantile)
}

QuantileMean(v,50)
-------------Vẽ boxplot----------------
boxplot ( FPSA  , border = 'darkgreen ', col ='cornsilk ',horizontal=TRUE,
ylim = c(0,10) , cex.axis =1)

par(mfrow = c(1,2))

boxplot ( TPSA , border = 'darkgreen ', horizontal=TRUE,col ='cornsilk ',
ylim = c(0,20) , cex.axis =1)
--------------------------EX5------------------------------------------------------------------

setwd('D:/R_lab')
data_ex5<- read.csv('lamphat.csv', header=T)

count_inflation<- function(v,x)
{
	count<-0
	n<-length(v)
	for( i in(1:n)){
		if(v[i]>x){
		count<- count+1 }
	}
	return(count)
}

us<- count_inflation(data_ex5$US,5)
uk<- count_inflation(data_ex5$UK,5)
Japan<- count_inflation(data_ex5$Japan,5)
Germany<- count_inflation(data_ex5$Germany,5)

inflation_high <- c(us,uk,Japan,Germany)

##trung bình, phương sai, trung vị và sai số chuẩn
##US
us <- data_ex5$US
mean(us) ## trung binh
var(us) ## phuong sai
sd(us) ## do lech chuan














