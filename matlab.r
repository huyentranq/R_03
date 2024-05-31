clc
clear all
%%% Bai 1: 
disp('Bài 1')
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

%% Bài 2
disp('Bài 2')
%% 2.a
disp('2.a')
f=x*sin(x+y);
int(int(f,y,0,pi/6),x,0,pi/3)
%% 2.b
disp('2.b')
syms x y
y3=x-x^3;
f= x^2+2*y;
disp('nghiem cua phuong trinh hoanh do giao diem: ')
x_tmp=solve(y3)
int(int(f,y,x,x^3),x,0,1)


%% 2.c
disp('2.c')
syms x
y = sqrt(x);
int(exp(x),x,1,4)

%% 2d
disp('2.d')
syms x y t
F=[x/sqrt(x^2+y^2) y/sqrt(x^2+y^2)];
x=t; y=1+t^2;
f=F(1)*diff(x)+F(2)*diff(y);
int(f,t,-1,1)

%% Bai 3
disp('Bài 3')
clc
clear all
syms x y
f=x*exp(-x*y)
m=1000;
n=1000;
dx=(20-0)/m;
dy=(10-0)/n;
I=0
for i= 1:m
    for j= 1:n
        x_tmp= 0+ i*dx;
        y_tmp= 0+j*dy;
        f_xy= x_tmp*exp(-x_tmp*y_tmp);
        I=I+ f_xy*dx*dy;
    end
end
disp('ket qua: ')
I
%% Bai 4
disp('4.a')
ya=dsolve('Dy=1-y','y(0)=1')
x_tmp=-5:0.1:5;
y_sub= subs(ya,x_tmp);
plot(x_tmp,y_sub)
%4b
disp('4.b')
yb=dsolve('(x^2+1)*Dy+3*x*(y-1)=0','y(0)==2','x')
x_tmp= -5:0.1:5;
y_sub= subs(yb,x_tmp);
plot(x_tmp,y_sub)
%4c
disp('4.c')
yc=dsolve('D2y-4*y=exp(x)*cos(x)+x^3','y(0)=1','Dy(0)=2','x')
x_tmp= 5:0.1:10;
y_sub= subs(yc,x_tmp);
plot(x_tmp,y_sub)

%% Bai 5
disp('Bài 5')
a=-10:0.1:10;
b=-10:0.1:20;
[x,y]=meshgrid(a,b);
z= 6*exp(-3*x.^2-y.^2)+x/2+y;
plot3(x,y,z)


%% Bai 6
disp('Bài 6')
clc
clear all
syms a b
f= a*b- a^3/3;
fx= diff(f,a);
fy= diff(f,b);
[x,y]=meshgrid(-10:0.6:10,-10:0.6:10);
P= subs(fx,{a,b},{x,y});
Q=subs(fy,{a,b},{x,y});

quiver3(x,y,P,Q)

%%Bai 7
disp('Bài 7')
clc
clear all
syms x y
f = x^3 - 12*x*y + 8*y^3
fx = diff(f,x);
fy = diff(f,y);
[xc,yc] = solve(fx,fy,x,y);
fxx = diff(f,x,2);
fxy = diff(diff(f,x),y);
fyy = diff(fy,y,2);
D = fxx * fyy - fxy^2;

for(i=1:length(xc))
    if(isreal(xc(i))&&isreal(yc(i)))
        D_sub= subs(D,{x,y},{xc(i),yc(i)});
        if(D_sub==0)
            disp('cuc tri khong xac dinh')
        elseif(D_sub<0) 
                fprintf('Điểm yên ngựa:  (%s,%s)\n', char(xc(i)), char(yc(i)));
        else 
            fxx_sub=subs(fxx,{x,y},{xc(i),yc(i)});
            if(fxx_sub>0) 
                fprintf('Điểm cực tiểu: (%s,%s)\n', char(xc(i)), char(yc(i)));
            else 
                fprintf('Điểm cực đại: (%s,%s)\n', char(xc(i)), char(yc(i)));
            end
        end 
    end
end






