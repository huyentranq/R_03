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
y1=x
y2=x^3
y3=x-x^3
f= x^2+2*y
x_tmp=solve(y3)
int(int(f,y,x,x^3),x,min(x_tmp),max(x_tmp))
