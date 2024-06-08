--------------EX2------------------------------
setwd('D:/R_lab')
mydata_ex2<- read.csv('SmartPhoneMarket2022-2023.csv',header=T)
data_2023<- mydata_ex2$Proportion_2023
data_2022<- mydata_ex2$Proportion_2022
my_col<- c("lavender", "lightblue", "mistyrose", "cornsilk","orange 3",
"lightcyan")
par(mfrow = c(1,3))
pie(data_2023, labels= seq(1,6),col= my_col, radius= 2, init.angle=90,
main='tỉ trọng năm 2023')
pie(data_2022, labels= seq(1,6),col= my_col, radius= 2, init.angle=90,
main='tỉ trọng năm 2022')
par(mfrow = c(1,3))
legend('left',legend= mydata_ex2$Companies, fill= my_col,horiz= F,cex=2)



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


--------------------------EX4-------------------------------------------


setwd('D:/R_lab')
mydata_ex4<-read.csv('SmartPhoneMarket2022-2023.csv',header=T)
data_2023<- mydata_ex4$Proportion_2023
data_2022<- mydata_ex4$Proportion_2022
names<-mydata_ex4$Companies
myplot_eg3<-barplot(
  cex.name=0.8,
  width=2,
  rbind(data_2022,data_2023),
  names.arg=names,
  beside=TRUE,
  col=c("lavender","cornsilk"),
  ylim = c(0, 100)
)

legend("topright",legend=c(2022,2023),horiz=FALSE,fill=my_col,
 border="black",cex=1.5)

## add text
a<-rbind(data_2022,data_2023) ## tạo matrix 
for (i in 1:length(a)) {
  text(x = myplot_eg3[i] , y = a[i] + 3, labels = a[i], col = "black", pos = 3,cex.name=0.7)
}


----------------------------EX5----------------------
v1<- c(326.24, 252.20, 893.62, 458.28)
v2<- c(770.09, 73.68, 884.78, 1168.88)
mydata<- rbind(v1,v2)
days_names<- c("Thursday","Friday", "Saturday", "Sunday")
mycol_eg3 = c("lavender","cornsilk")
myplot_eg3 <- barplot(mydata , names.arg = days_names , beside=TRUE ,
 col = mycol_eg3,ylab ="Total bills($)", border ="darkgreen",
 ylim = c(0,max ( mydata )+100))

for (i in 1:length(mydata)) {
  text(x = myplot_eg3[i] , y = mydata[i] + 3, labels = mydata[i],
 col = "black", pos = 3,cex.name=0.7)
}


