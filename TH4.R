##Dùng công thức lý thuyết tính trung bình mẫu, phương sai mẫu, độ lệch chuẩn mẫu và trung vị mẫu
##của v.
## TB mau: mean(v)
MeanSample<- function(v){
	val<- sum(v)/length(v)
	return(val)
}
VarSample<- function(v){
	n<- length(v)
	Mean<- MeanSample(v)
	sum<- 0
	for(i in 1:n){
		sum<- sum+(v[i]-Mean)^2
	}
	Var<- sum/(n-1)
	return(Var)
}
VarSample(v)
var(v)
## Tinh phan vi
QuantileSample<- function(v,q){
	v_sorted<- sort(v)
	n<- length(v)
	val<-0
	index<- n*q/100
	if((n*q)%%100==0){
		val<- v[index]}
	else{
		j<- n*q/100
		val<- (v[j]+v[j+1])/2
	}
	return(val)
}
##phuong_sai_mau 
var(v)

## do_lech_chuan
sd(v)
## Trung vi: 
mean()


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





Bài 6. File "diesel_engine.dat" và "diesel_time.xls" chứa số liệu về hoạt động của các động cơ chạy bằng
dầu diesel.
##(a) Đọc dữ liệu từ hai files này và gán vào hai dataframe đặt cùng tên với tên files.
Hướng dẫn cách đọc file ".dat" trong : dùng lệnh read.table, chẳng hạn

setwd('D:/R_lab')
diesel_time<-read.csv('diesel_time.csv',header=T)

diesel.engine <- read.table('D:/R_Lab/diesel_engine.dat ', header =TRUE , sep ="")

## b ----------------------------------
## bieen trong diesel_time : timing, delay, temp, press
## bieen trong diesel.engine : run, speed, load, alcohol

##c -------------------------------------
(c) Xác định có bao nhiêu dữ liệu bị khuyết (missing data) trong
 dataframe diesel_engine.
• Thay thế các giá trị bị khuyết trong biến speed bởi giá trị 1500;
• Thay thế các giá trị bị khuyết trong biến load bởi giá trị 20;

n<- length(diesel.engine[,1])
count<-0
for(i in (1:4)){
	col<- diesel.engine[,i]
	for(j in (1:n)){
		if(is.na(col[j])){
			count<- count+1
			if(i==2){
				col[j]<-1500
			}
			else if(i==3){
				col[j]<-20}
			
		}
	}
	diesel.engine[,i]<-col
}
print(count)
print(diesel.engine)
---------------------------------------------------------------------
##(d) Tính trung bình mẫu, phương sai mẫu, độ lệch chuẩn mẫu, 
##giá trị lớn nhất và giá trị nhỏ nhất của biến alcohol trong dataframe diesel_engine.
alcohol<- diesel.engine$alcohol
mean(alcohol)
var(alcohol)
sd(alcohol)
min(alcohol)
max(alcohol)

-----------------------------------------------------------------------
##(e) Ghép hai dataframe tạo ở câu (a) thành một dataframe đặt tên là diesel.
diesel <- cbind(diesel.engine,diesel_time)
-----------------------------------------------------------------------
##(f) Trích các giá trị của biến run (số thứ tự các động cơ) mà có
## thời gian trễ (biến delay) dưới 1000.
n<- length(diesel$delay)
delay<- diesel$delay
run<- diesel$run
mylist<- list()
my_data<- c()
for( i in(1:n)){
	if(delay[i]<1){
		my_data<- c(my_data,run[i])
	}
}
print(my_data)

-------------------------------------------------------------------------------
##(g)Đếm xem có bao nhiêu động cơ có timing bằng 30.
timing <- diesel$timing
count<- 0
n<- length(timing)
for( i in(1:n)){
	if(timing[i]==30){
		count<- count+1
	}
}
print(count)

##(h) Vẽ biểu đồ boxplot cho các biến speed, timing và delay.
delay<- diesel$delay
speed<- diesel$speed
boxplot(delay, border='darkgreen', col='yellow',ylim=c(0,2))
boxplot(speed, border='darkgreen', col='yellow',ylim=c(1000,2500))

##(k) Chia phạm vii á trị của biến delay thành bốn đoạn đều nhau và 
##đếm số dữ liệu nằm trong mỗi đoạn đó. Tạo bảng thống kê và vẽ biểu đồ cột.

delay<- diesel$delay
n<- length(delay)
min<- min(delay)
max<- max(delay)
dx<- (max-min)/4
results<-rep(1,4)
  for(i in(1:n))
  {
    if(delay[i]<= (min+dx)){
      results[1]<-results[1]+1
    }else if((delay[i]> (min+dx))&&(delay[i]<= (min+2*dx))){
      results[2]<-results[2]+1
    }else if((delay[i]> (min+2*dx))&&(delay[i]<= (min+3*dx))){
      results[3]<-results[3]+1
    }else
    {
      results[4]<-results[4]+1
    }
  }
























