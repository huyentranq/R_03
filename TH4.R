v<- c(0.12,-3.1,-2.05,1.52,2.11,4.8,3.4)
n<- length(v)
sum <-0
for(i in (1:n)){
	sum<- sum + v[i]
}
trung_binh_mau <- sum/n
##mean(v)
tong<-0
for(i in (1:n)){
	tong<- tong +(v[i]-trung_binh_mau)^2
}
phuong_sai_mau <- tong/(n-1)
## var(v)


do_lech_chuan<- sqrt(phuong_sai_mau)
##sd(v)


median(v)


BT2----------------------------------------------
v<- c(0.12,-3.1,-2.05,1.52,2.11,4.8,3.4)
QuantileMean <- function(v, q) {
n<- length(v)
sorted_v <- sort(v)
  index <- ceiling((q / 100) * n)
  quantile<- sorted_v[index]
  return(quantile)
}

QuantileMean(v,50)

