Lý thuyết
type="..." 
      + l : line
      + p : points
      + b : 
lty= 1 : nét liền / 2: nét đứt
lwd : độ đậm
pch= ..(số từu 1--> 18) .. : vẽ điểm, số: hình dạng điểm 
bg= "green" : tô màu nền bên trong




myfunc<- function(x){
  (exp(-x^2/2))/sqrt(2*pi)
}
x<- seq(-10,10,by=0.1)
plot(x,myfunc(x),ylim=c(0,0.5),type="l",xlab="x",ylab="f(x)",
     col="green",lty=1,lwd=2)
x_tmp<- rep(0,10)
lines(x_tmp,seq(min(myfunc(x)),myfunc(0),length=length(x_tmp)),col="red"
      lty=2)
lines ( x_tmp , seq ( min(myfunc( x )),myfunc(0) , length = length(x_tmp )) ,
        col ='green 3', lty =2, lwd =1.2)
x<- seq(-10,10,by=0.1)
plot(x,sin(x),ylim=c(0,pi),type="l",xlab="x",ylab="f(x)",
     col="green",lty=1,lwd=2)

x <- seq(-10, 10, by = 0.1)  # Tăng độ mịn của đồ thị bằng cách giảm bước nhảy
plot(x, sin(x), ylim = c(-pi, pi), type = "l", xlab = "x", ylab = "f(x)", 
     col = "green", lty = 1, lwd = 2)
lines (x , cos(x) , ylim = c(-pi, pi) , type = "b", xlab ="x", ylab ="f(x)",
       col ='blue3', lty =3, lwd = 1)

## Bai 2
## Ham g(x)
g_func <- function ( y ){
  
  temp <- integrate(function(t){exp(-(t^2)/2)/ sqrt(2*pi )} ,
                      lower = -Inf , upper = y )
  return ( temp$value )
}
x<-seq( -10,10,by=0.1)
k<-sapply(seq( -10,10,by=0.1) , g_func )


plot(x,k,ylim=c(min(k),max(k)+1),type="l",xlab="x",ylab="f(x)",
     col="green",lty=1,lwd=2)
## cau b
y<- 0.5*x^0
lines (x , y, ylim=c(min(k),max(k)+1) , type = "l", xlab ="x", ylab ="f(x)",
       col ='blue3', lty =1, lwd = 1)

##Bai 3
mtcars
y<- mtcars$mpg
x<- mtcars$wt
n<- length(y)
Sxy<- sum(x*y)-sum(x)*sum(y)/n
Sxx<- sum(x^2)- sum(x)^2/n
B1<- Sxy/Sxx
B0<- mean(y)-B1*mean(x)
## pt hoi quy tuyen tinh
myfunc<- function(x_para) ## luu y: ham khong duoc de bien x( trung voi bien ben tren)
{
	B0+B1*x_para
}
## ve plot
plot(mtcars$wt,mtcars$mpg,main="Scatter plot example",xlab="car weight",
	ylab="Miles Per Gallon", pch=1, lwd=1.75, cex=1.2,
	col ='dodgerblue ', bg ='white ')
## ve them pt hoi quy
x<- seq(min(x),max(x),by=0.1)

## phuong trinh hoi quy
lines(x, myfunc(x),ylim=c(10,35),type="l",col="blue",lwd=3 )

## uoc luong diem gia tri
points (2.5, myfunc(2.5) , pch =10,col = 'green 3', lwd =2, cex =1.2)

