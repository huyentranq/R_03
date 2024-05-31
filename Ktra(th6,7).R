## Bai 1: ve do thi sinx, cosx

y<- function(x_para)
{
	sin(x_para)
}
x<- seq(-10,10,by=0.1)
plot(x,y(x),ylim=c(-2,2),type="l",xlab="x", ylab="f(x)",lty=1,lwd=2)
x_tmp<- rep(-10,10)
## Them truc x,y
lines(seq(-10,10,length=20),rep(0,20),col='green3',lty=1,lwd=2)
lines(rep(0,20),seq(-2,2,length=20),col='green3',lty=1,lwd=2)
x_sub<-seq(-10,10,by=0.1)
## Ve cac diem cuc dai, cuc tieu
for(i in -10:10)
{
	points(pi/2+i*pi,y(pi/2+i*pi),pch=10,col= 'red',lwd=2,cex=1.2)
}
## Cosx
y2<- function(x2){
	cos(x2)
}
lines(x,y2(x),ylim=c(-2,2),type="l",col='blue3',lty=1,lwd=2)
for(i in -10:10)
{
	points(i*pi,y2(i*pi),pch=10,col= 'red',lwd=2,cex=1.2)
}
