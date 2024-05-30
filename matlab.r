clc
clear all
%%% Bai 1: 
syms a b c x y z
f= (a*x+b*y+c*z)*sin(x*y*z)^-1
fx=diff(f,x)
fy=diff(f,y)
fz=diff(f,z)
fxx= diff(fx,x)
fxy= diff(fx,y)
fxz=diff(fx,z)
fyy=diff(fy,y)
fyx= diff(fy,x)
fyz= diff(fy,z)
fzz= diff(fz,z)
fzx= diff(fz,x)
fzy= diff(fz,y)

%% cau 2

%% 2.a
f=x*sin(x+y)
int(int(f,y,0,pi/6),x,0,pi/3)
%% 2.b

syms x y
y3=x-x^3
f= x^2+2*y
disp('nghiem cua phuong trinh hoanh do giao diem: ')
x_tmp=solve(y3)
int(int(f,y,x,x^3),x,0,1)


%% 2.c
%%2d

%% 3

clc
clear all
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
        f_xy=subs(f,{x,y},{x_tmp,y_tmp})
        I=I+ f_xy*A
    end
end
disp('ket qua: ')
I

%% Cau 4
%4a
y=dsolve('Dy=1-y','y(0)=1')
plot(y)
%4b
f=dsolve('(x^2+1)*Dy+3*x*(y-1)=0','y(0)==2','x')
x_tmp= -5:0.1:5
y_sub= subs(f,x_tmp)
plot(x_tmp,y_sub)
%4c
f=dsolve('D2y-4*y=exp(x)*cos(x)+x^3','y(0)=1','Dy(0)=2','x')
x_tmp= 5:0.1:10
y_sub= subs(f,x_tmp)
plot(x_tmp,y_sub)
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

%%
%%Bai 7
syms x y
f = x^3 - 12*x*y + 8*y^3
fx = diff(f,x)
fy = diff(f,y)

[xc,yc] = solve(fx,fy,x,y)
fxx = diff(fx,x)
fxy = diff(fx,y)
fyy = diff(fy,y)
D = fxx * fyy - fxy^2
D1=subs(D,{x,y},{xc(1),yc(1)})
fxx1=subs(fxx,{x,y},{xc(1),yc(1)})
if(D1<0) disp('(0,0) là điểm yên ngựa của f')
else
    if(fxx1<0) disp('(0,0) là điểm cực đại địa phương của f ')
    else if(fxx1>0) 
            disp('(0,0) là điểm cực tiểu địa phương của f')
    else 
        disp('chưa có kết luận về điểm (0,0)')
    end
    end
end

D2=subs(D,{x,y},{xc(2),yc(2)})
fxx2=subs(fxx,{x,y},{xc(2),yc(2)})
if(D2<0) disp('(2,1) là điểm yên ngựa của f')
else
    if(fxx2<0) disp('(2,1) là điểm cực đại địa phương của f ')
    else if(fxx2>0) 
            disp('(2,1) là điểm cực tiểu địa phương của f')
    else 
        disp('chưa có kết luận về điểm (2,1)')
    end
    end
end



