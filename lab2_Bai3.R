read.csv('D:/R_lab/data01.csv',header=T)
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
a<-ex4_plants_height[,1]
b<-ex4_plants_height[,2]
n<-ex4_plants_height[,3]
myfunc_ex4(a,b,n)
