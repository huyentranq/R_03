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


---------------EX3---------------------------------------
labels<-c("oil","coal","gas","renewal energies","nuclear energy","others")
 rates<-c(33.1,27,21.1,12.8,5.8,0.2)
 mycol <- c("lavender", "lightblue", "mistyrose", "cornsilk","orange3","lightcyan")
 barplot(rates,names.arg = rep(1:6),
    width = 2,
    cex.name=1, 
    col=mycol,
    ylim=c(0,50),
    border="darkgreen",
    ylab="energy rates ",
    main="ty trong energy sources")
 par(mfrow = c(1,2)) 
 legend("left",legend=labels,horiz=FALSE,fill=mycol, border="black",cex=1)

-----------------EX4------------------------------------------------------
labels <- c("A", "B", "C")
values1 <- c(10, 20, 30)
values2 <- c(15, 25, 35)

# Vẽ biểu đồ cột chèn
barplot(rbind(values1, values2), 
        beside = TRUE,
        names.arg = labels,
        cex.name=0.5,
        col = c("blue", "red"),
        ylim = c(0, 40),
        xlab = "Nhãn X",
        ylab = "Nhãn Y",
        main = "Biểu đồ cột chèn")


setwd('E:/R_lab')
mydata_ex2<-read.csv('SmartPhoneMarket2022-2023.csv',header=T)
label1<-mydata_ex2[,2]
label2<- mydata_ex2[,3]
names<-mydata_ex2[,1]
barplot(
  cex.name=0.8,
  width=2,
  rbind(label1,label2),
  names.arg=names,
  beside=TRUE,
  col = c("blue", "red"),
  ylim = c(0, 100)
)
par(mfrow = c(1,1)) 
legend("topright",legend=c(2022,2023),horiz=FALSE,fill=c("blue", "red"), border="black",cex=1)

