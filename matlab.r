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
