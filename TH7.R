Bai1

setwd('E:/R')
data<- read.csv('Apple-revenue-1992-2023.csv',header= T)
revenue<- data$Revenue

change_rate<- c()
k<- 1
for(i in (17:length(revenue))){
  change_rate[k]<-(revenue[i]-revenue[i-1])/revenue[i-1]
  k<- k+1
}

myplot <- barplot ( revenue , border = NA , col = 'lightblue ',
                    names.arg = data$Year,axes =FALSE , cex.names =0.8)
barplot(change_rate , border = 'darkgreen ', bty="n",
          ylim =c(min ( change_rate)-0.2,max ( change_rate )+0.2) , axes = F)

##Bai 3
setwd('E:/R')
ex3<- read.csv('AirPassengers.csv',header= T)
// chọn start, end theo cột dữ liệu
mydata_ts<-ts(ex3[,-1],start=c(1949,1),end= c(1960,12),deltat= 1/12 )
plot ( mydata_ts , col =" dodgerblue ", lwd =2.5, main ="",
       col.axis ='orange2', col.lab ='darkgreen ', cex.axis =1.2)
mycol_ts <- c(" dodgerblue ", "green4", "orange3", "purple3", "red3")
#
plot ( mydata_ts, plot.type ="single", lty = 1, col = mycol_ts , lwd =2.5,
       ylab =" Stock Price (usd )",cex.axis = 0.2)

## create a grid to the plot : tạo lưới
grid (8,8,col= 'darkgreen ', lty =3, lwd =1.2)
dev.off()
plot.new()
----------------------------------------- Laptop cá nhân
setwd('D:/R_lab')
ex3<- read.csv('AirPassengers.csv',header= T)
// chọn start, end theo cột dữ liệu
mydata_ts<-ts(ex3[,-1],start=c(1949,1),end= c(1960,12),deltat= 1/12 )
plot ( mydata_ts , col =" dodgerblue ", lwd =2.5, main ="",
       col.axis ='orange2', col.lab ='darkgreen ', cex.axis =1.2)
mycol_ts <- c(" dodgerblue ", "green4", "orange3", "purple3", "red3")
#
ts.plot ( mydata_ts, plot.type ="single", lty = 1, col = mycol_ts , lwd =2.5,
       ylab =" Stock Price (usd )",cex.axis = 0.2)
#####Bai 2
## Loi giai: trang 5

setwd('D:/R_lab')
ex2<- read.csv('stock_price-US-nasdaq.csv',header= T)
##

## loc het cac du lieu NA
ex2_filter<- subset(ex2, !is.na(ex2[, 3]))

## Ðua data cua hai hang can dung vao mysubdata_ex2
mysubdata_ex2<- data.frame(ex2_filter[1],ex2_filter[3],ex2_filter[5])

##

##
x_vec <- seq( as.numeric(mydata 2$Year[1]) ,

as.numeric(mydata2$Year[length ( mydata 2$ Year )]) , by=1)

## ve cach don gian(trang 3)
plot ( mysubdata_ex2[,2], type = 'l',col ='dodgerblue ', lwd =3,
, axes = T )

## them 1 duong du lieu len bieu do da ve
lines(mysubdata_ex2[,3], type = 'l', col = 'red', lwd = 3)

## Truc quan data
plot( mysubdata_ex2 , col ="darkgreen", lwd =2.5, main ="",lty=1,
       col.axis ='orange2', col.lab ='darkgreen ', cex.axis =1.2)

plot (mysubdata_ex2, plot.type ="single", lty =1,col = mycol_ts , lwd =2.5)

## 
myplot <- barplot (mysubdata_ex2[,2] , border = NA , col = 'lightblue ',
names.arg = mysubdata_ex2[,1] , cex.names =0.7)

----------------------------Bai 2
#####Bai 2
## Loi giai: trang 5

setwd('D:/R_lab')
ex2<- read.csv('stock_price-US-nasdaq.csv',header= T)
##

## loc het cac du lieu NA
ex2_filter<- subset(ex2, !is.na(ex2[, 3]))

## Ðua data cua hai hang can dung vao mysubdata_ex2
mysubdata_ex2<- data.frame(ex2_filter[1],ex2_filter[3],ex2_filter[5])

Date<- mysubdata_ex2[,1]
## gioi han x y
ylim_range <- range(mysubdata_ex2[,2])
## Biểu đồ chính
plot(mysubdata_ex2[,3], type = 'l', col = 'dodgerblue', lwd = 3,
     ,axes= FALSE, xlim = c(0,22), ylim = ylim_range)

## thêm 1 đường dữ liệu lên biểu đồ đã vẽ
lines(mysubdata_ex2[,2], type = 'l', col = 'red', lwd = 3)

## Vẽ thêm trục
date_seq<- mysubdata_ex2[,1]
current_data<- mysubdata_ex2[,3]
##TRuc 0x
axis(side=1, at = seq(1,22), labels = format(date_seq), las = 2)
# Trục 0y
axis(side=2, at = seq(0,600,30),labels = seq(0,600,30), las =1 )
## las : hướng đặt của label
 las=2 : hướng vuông góc với trục
 las= 1: song song với trục

## Biểu đồ phân tán
plot( mysubdata_ex2 , col ="darkgreen", lwd =2.5, main ="",lty=1,
       col.axis ='orange2', col.lab ='darkgreen ', cex.axis =1.2)
