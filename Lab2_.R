---------BAI 1------------------------
sphere_vol <- function(r_vec){
	v<-0
	v<-round((4*pi*r_vec^3)/3,2)
	mydf<-data.frame('Radius'=r_vec,'Volume'=v)
	return (mydf)
}
sphere_vol(c(0.2,0.5,1,1.5))

--------BAI 2----------------------------------

x<-c(1,2,5,7,-3,0,5,1,5,6)
y<-c(2,2,0,-5,7,8,11,9,3,2)
#find even number in x
u<-subset(x,x%%2==0) 
v<-subset(y,y%%2==1)
u
v
x[x>0] # Extract elements of x greater than 0
y[y>0]
trung_binh_mau<- mean(x)
phuong_sai <- var(x) 
do_lech_chuan <- sd(x)
sort(x) #sort increase
sort(x,T)#sort decrease



--------BAI 3-----------------------------------
#CACH 1: using fuction  VECTORIZED
setwd('D:/R_lab')
people_age<-read.csv('data01.csv',header=T)
 age<-people_age[,1]
fpsa<-people_age[,2]
tpsa<-people_age[,3]
k<-people_age[,4]

index <- ifelse(age <= 60, 0,
         ifelse(age <= 70, 1,
         ifelse(age <= 80, 2, 3)))

index
#CACH 2:
index<-c()
for(i in (1:length(people_age$Age)){
	if(people_age$Age[i] <=60){
		index[i]<-0 
	} else if (people_age$Age[i]>60 && people_age$Age[i]<=70){
		index[i]<-1 
	} else if (people_age$Age[i]>70&& people_age$Age[i]<=80){
		index[i] <-2 
	} else {
		index[i]<-3 
	}
 }
data.frame(index,people_age$Age)

-----Run------
index<-c()
for (i in 1:length(people_age$Age)) {
    if (people_age$Age[i] <= 60) {
        index[i] <- 0
    } else if (people_age$Age[i] > 60 && people_age$Age[i] <= 70) {
        index[i] <- 1
    } else if (people_age$Age[i] > 70 && people_age$Age[i] <= 80) {
        index[i] <- 2
    } else {
        index[i] <- 3
    }
}
data.frame(index,people_age$Age)
-----------BAI 4------------------------------------------

setwd('D:/R_lab')
ex4_plants_height<-read.csv('data11.csv',header=T)
ex4_plants_height
myfunc_ex4 <-function(para_a,para_b,para_n){
	height_min<-(min(para_a)+min(para_b))/2
	height_max<-(max(para_a)+max(para_b))/2
	height_mean<-(mean(para_a)+mean(para_b))/2
	height_var<-(var(para_a)+var(para_b))/2
	mylist <- list(
		thap_nhat=height_min,
		cao_nhat=height_max,
		trung_binh=height_mean,
		do_lech_chuan=height_var)
 	return(mylist)
}

myfunc_ex4(a,b,n)

----------BAI 5------------------------------------
setwd('D:/R_lab')
data1<-read.csv('data01.csv',header=T)
data1
tb_mau_FPSA<-mean(data1$FPSA)
phuong_sai_FPSA<-var(data1$FPSA)
trung_vi_FPSA <-median(data1$FPSA)
tb_mau_TPSA<-mean(data1$TPSA)
phuong_sai_TPSA<-var(data1$TPSA)
trung_vi_TPSA<-median(data1$TPSA)
#tach nhung gia tri FPSA co K=0 va FPSA co K=1
FPSA_0<- subset(data1$FPSA,data1$K==0)
FPSA_0
FPSA_1<- subset(data1$FPSA,data1$K==1)
FPSA_1
