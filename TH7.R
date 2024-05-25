
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

##
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
