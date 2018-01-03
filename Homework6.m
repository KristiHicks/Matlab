%Homework 6- Kristi Hicks
clear all; close all; clc;
%Problem 1
p= [0.1 -0.2 -1 5 -41.5 235];
x= linspace(-6,6,200);
y= polyval(p,x);
figure; plot(x,y)
xlabel('x'); ylabel('y');

%Problem 9
V= 12212/0.284;
Vout= 240*120*80;
p1= [-1 240];
p2= [-1 120];
p3= [-2 80];
pa= conv(p1,p2);
Vin= conv(pa,p3);
p=Vin;
n=length(p);
p(n)= p(n)+V-Vout;
t= roots(p)

%Problem 15a
[x y W]= Homework6functions(3, -7, 14)
%Problem 15b
[x y W]= Homework6functions(-5, -11, 15)

%Problem 20
Y= [1815 1845 1875 1905 1935 1965];
t1= Y-1800;
Pop= [8.3 19.7 44.4 83.3 127.1 190.9];
p= polyfit(t1,Pop,2)
tp= linspace(1815,1965,100);
Pplot= polyval(p,tp-1800);
figure; plot(Y,Pop,'o',tp,Pplot)
xlabel('Year'); ylabel('Population (Millions)');
legend('Data', 'Model',0);
Pop1915= polyval(p,1915-1800)

%Problem 24a
xx= [1 2.2 3.7 6.4 9 11.5 14.2 17.8 20.5 23.2];
yy= [12 9 6.6 5.5 7.2 9.2 9.6 8.5 6.5 2.2];
p1= polyfit(xx,yy,1);
xplot= linspace(0,24,100);
yplot= polyval(p1,xplot);
figure; plot(xx,yy,'ok',xplot,yplot,'k','linewidth',2,'markersize',8);
xlabel('x','fontsize',18); ylabel('y','fontsize',18);
%Problem 24b
p2= polyfit(xx,yy,2);
y2plot= polyval(p2,xplot);
figure; plot(xx,yy,'ok',xplot,y2plot,'k','linewidth',2,'markersize',8);
xlabel('x','fontsize',18); ylabel('y','fontsize',18);
%Problem 24c
p3=polyfit(xx,yy,3);
y3plot= polyval(p3,xplot);
figure; plot(xx,yy,'ok',xplot,y3plot,'k','linewidth',2,'markersize',8);
xlabel('x','fontsize',18); ylabel('y','fontsize',18);
%Problem 24d
p4=polyfit(xx,yy,5);
y4plot= polyval(p4,xplot);
figure; plot(xx,yy,'ok',xplot,y4plot,'k','linewidth',2,'markersize',8);
xlabel('x','fontsize',18); ylabel('y','fontsize',18);