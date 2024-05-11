setwd('E:/R_lab')
data_pop_US<- read.csv("population-structure-US-2023.csv",header=TRUE)
Male<- round(data_pop_US$Male/1000,0)
Female<- round(data_pop_US$Female/1000,0)
##
mycol_male <- rgb(191,239,255, maxColorValue =255)
##
## axes= False: không hiển thị trục x
## -Male-5000 nới các cột giá trị của male thêm 5000
plot_make<- barplot(-Male-5000, axes =FALSE, horiz=T,border=NA, col= mycol_male,xlim =c(-30*(10^3) ,30*(10^3)))
##
mycol_female <- rgb(250,100,210,100, maxColorValue =255)
##
plot_male<-barplot(Female+5000,axes =FALSE, horiz=T, border=NA, col=mycol_female,add=T,
                   xlim =c(-30*(10^3) ,30*(10^3)))
## add line between two plot
abline( v =0, lwd=30, col=par("bg"))
##add text between space
text (0, plot_male , data_pop_US$Age,cex =0.6, col='blue 3')
## theem cột x 
posi_vec <- seq( -30000,30000,by=5000)
mtext ( abs( posi_vec ) , at = posi_vec , side =1, line = 1, cex =0.6)

## Thêm đường kier sọc
del_lines <- ( plot_male[2] - plot_male[1 ])/ 2 ## xem lại ảnh trên đt
for(k in 1:length(posi_vec)){
  if(posi_vec[k]!=0){
    lines(rep(posi_vec[k],10),
    seq(plot_male[1]-del_lines+0.15,max(plot_male)+del_lines,length=10),
    col="darkgreen",lty=3,lwd=1.5)
  }
}

## Them chu thich
##side=2 : huong ben trai, line: điều chỉnh theo chiều dọc, adj:chiều ngang
mtext( "working age",col= 'red 3', cex =1.2, side =2,line=2)
mtext( "Men", side =3, line = -1, adj =0.25, cex =0.8, col =" orange 3")
mtext( "Women ", side =3, line = -1, adj =0.75, cex =0.8, col =" orange 3")

## Thêm ô highlight vùng dữ liệu
rect( -max( Male ) -500,mean( plot_male [1:2 ,]) , max( Female )+500, mean ( plot_male [4:5 ,]) ,
       xpd =T , col = rgb (225,225,225,90, maxColorValue =255) , border = NA )

