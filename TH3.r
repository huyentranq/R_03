setwd('E:/R_lab')
mydata_ex2<-read.csv('SmartPhoneMarket2022-2023.csv',header=T)
labels<- mydata_ex2[,1];
data_2022<-mydata_ex2[,2];
 
data_2023<- mydata_ex2[,3]
mycol<-c("white","green","purple","violet","brown","red")
pie(data_2023,labels=data_2023,radius=1,col=mycol,init.angle=90,main='tỉ trọng năm 2023')
pie(data_2022,labels=data_2022,radius=1,col=mycol,init.angle=90,main='tỉ trọng năm 2022')

par(mfrow = c(1,3)) ##chia bảng thành 3 phẦN

##tạo chú thích
legend("left",legend=labels,horiz=FALSE,fill=mycol, border="black",cex=1.5)


