clc
clear all
syms a b c x y z
f= (a*x+b*y+c*z)*sin(x*y*z)^-1
diff(f,x)
diff(f,y)
diff(f,z)
%% cau 2

%% 2.a
f=x*sin(x+y)
int(int(f,y,0,pi/6),x,0,pi/3)
%% 2.b

y3=x-x^3
f= x^2+2*y
x_tmp=solve(y3)
int(int(f,y,x,x^3),x,min(x_tmp),max(x_tmp))

%% 2.c
f= exp(x)
int(f,x,1,4)

%% 3
%% 2.a
syms x y
f=x*exp(-x*y)
a=0
b=20
c=0
d=10
m=20
n=10
dx=(b-a)/m
dy=(d-c)/n
I=0
A= dx*dy
for i= 1:m
    for j= 1:n
        x_tmp= a+(i-1/2)
        y_tmp= c+(j-1/2)
        f_xy=subs(f,[x,y],[x_tmp,y_tmp])
        I=I+ f_xy*A
    end
end

%%5

a=-10:0.1:10
b=-10:0.1:20
[x,y]=meshgrid(a,b)
z= 6*exp(-3*x.^2-y.^2)+x/2+y
plot3(x,y,z)
