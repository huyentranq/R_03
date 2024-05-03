TH3  --- EX3

labels<-c("oil","coal","gas","renewal energies","nuclear energy","others")
 rates<-c(33.1,27,21.1,12.8,5.8,0.2)
 mycol <- c("lavender", "lightblue", "mistyrose", "cornsilk","orange3","lightcyan")

barplot(rates, col= mycol, names.arg= rep(1:6),cex.name= 1,width=2, ylim= c(0,40))
par(mfrow= c(1,2))

legend("left", legend= labels, horiz= FALSE, fill = mycol, cex= 1)


----------------------------------
setwd('D:/R_lab')
ex4<- read.csv('SmartPhoneMarket2022-2023.csv',header=T)
names<- ex4[,1]
lb2022<- ex4[,2]
lb2023<- ex4[,3]

par(mfrow= c(1,1))
my_plot<-barplot(rbind(lb1,lb2),beside=TRUE, col=c("blue","red"), names.arg= names, ylim= c(0,100))


------ add text
a<- rbind(lb2022, lb2023)
n<- length(a)
for(i in(1:n)){
	text(x= my_plot[i], y=a[i]+5,labels = a[i], col= 'black', pos= 3, cex.name= 0.5)
}


my_plot[2]

-------Phan vi mau muc q%  ------------------------------------

#phân vi mau muc q% cua vecto v
my_func<- function(v,q){
	n<- length(v)
	v_sorted<- sort(v)
	j<- (q/100)*n
	if((q*n)%/%100==0){
		val<- v_sorted[j]
	}	
	else{
		i<- (q*n)/100
		val<- (v_sorted[i]+v_sorted[i+1])/2
	}
	return(val)

}

v<- c(1,2,3,4,5,6,7,8,9)
q<-25
my_func(v,q)



-------------
Xác định giá trị ngoại lai


z_score <- (value - mean(data)) / sd(data)

if (abs(z_score) > 3) {
  # Giá trị ngoại lai
}
