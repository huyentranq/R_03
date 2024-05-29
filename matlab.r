clc
clear all
%%% Bai 1: 
syms a b c x y z
f= (a*x+b*y+c*z)*sin(x*y*z)^-1
df_dx=diff(f,x)
df_dx
df_dy=(f,y)
df_dy
df_dz=(f,z)
df_dz
%% cau 2

%% 2.a
f=x*sin(x+y)
int(int(f,y,0,pi/6),x,0,pi/3)
%% 2.b

y3=x-x^3
f= x^2+2*y
x_tmp=solve(y3)
int(int(f,y,x,x^3),x,0,1)

%% 2.c
%%2d

%% 3

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

%% Cau 4
%4a
y=dsolve('Dy=1-y','y(0)=1')
plot(y)
%4b
y=dsolve('(x^2+1)*Dy+3*x*(y-1)=0','y(0)=2','x')
plot(y)
%4c
y=dsolve('D2y-4*y=exp(x)*cos(x)+x^3','y(0)=1','Dy(0)=2','x')

%%5

% a=-10:0.1:10
% b=-10:0.1:20
% [x,y]=meshgrid(a,b)
% z= 6*exp(-3*x.^2-y.^2)+x/2+y
% plot3(x,y,z)
ezmesh('6*exp(-3*x^2-y^2)+x/2+y',[-10,10,-10,20])

%% 
%%6
clc
clear all
syms a b
f= a*b- a^3/3
fx= diff(f,a)
fy= diff(f,b)
[x,y]=meshgrid(-10:0.6:10,-10:0.6:10)
P= subs(fx,{a,b},{x,y})
Q=subs(fy,{a,b},{x,y})

quiver3(x,y,P,Q)
