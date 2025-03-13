> mylist <- list(name="Trang", sdt = 222, scores= c(2,5,6))
> mylist
$name
[1] "Trang"

$sdt
[1] 222

$scores
[1] 2 5 6

extract: mylist["name"]


-------------
trungbinh<- function(v){
  return (sum(v)/length(v))
}

sbinh<- function(v){
  tong<- 0
  tb<- trungbinh(v)
  for (x in v) {
    tong <- tong+ (x-tb)^2
  }
  return (tong/(length(v)-1))
}
v<- c(2,4,5,1,7,9)
sbinh(v)
  s<- sqrt(sbinh(v))

stderr_val<- s/sqrt(length(v))
