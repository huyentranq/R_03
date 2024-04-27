## Tính tổng bình phương
x<- c(1,2,3)
sum(x^2)  ## = 1^2 + 2^2 + 3^2

## Tạo matrix
byrow= T : chạy theo hàng 

v<- c(1,2,3,4,5,6,7,8,9)
matrix(v,nrow=3,byrow=T)   

## ma trận hoán vị : t()

# tạo ra mộ ma trận 3 x 3 với tất cả phần tử là 0.
 matrix(0, 3, 3) 

# tạo ra mộ ma trận 3 x 3 với tất cả phần tử là 0.
 A<- matrix(0, 3, 3) 

 diag(A)<- 1 ## các phần tử trên đường chéo bằng 1

## định thwucs ma trận : det()



