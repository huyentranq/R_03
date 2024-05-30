
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
##Them truc x
Date<- mysubdata_ex2[,1]
## gioi han x y
xlim_range <- range(mysubdata_ex2[,1])
ylim_range <- range(mysubdata_ex2[,3])


plot(mysubdata_ex2[,3], type = 'l', col = 'dodgerblue', lwd = 3,
     ,axes= FALSE, xlim = c(0,length(mysubdata_ex2[,1]), ylim = ylim_range)


axis(1, at = seq(1, length(mysubdata_ex2[, 2]), length.out = length(date_seq)), 
     labels = format(date_seq, "%b %Y"), las = 2)
plot ( mysubdata_ex2[,1] , mysubdata_ex2[,3] , type = 'l',col ='dodgerblue ', lwd =3,
xlab =" Year ", ylab =" Revenue (in billion USD )", axes = F )

## Truc quan data
plot( mysubdata_ex2 , col ="darkgreen", lwd =2.5, main ="",lty=1,
       col.axis ='orange2', col.lab ='darkgreen ', cex.axis =1.2)

plot (mysubdata_ex2, plot.type ="single", lty =1,col = mycol_ts , lwd =2.5)

## 
myplot <- barplot (mysubdata_ex2[,2] , border = NA , col = 'lightblue ',
names.arg = mysubdata_ex2[,1] , cex.names =0.7)
