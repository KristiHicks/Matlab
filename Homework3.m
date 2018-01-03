%Homework 3- Kristi Hicks
clear all; close all; clc;

%Problem 1
x = [-1:1:5];
y = (x.^2.-3*x+7)./sqrt(2*x+5);
figure; plot(x,y);
title('Problem 1');

%Problem 7
f= 2*pi;
m=[0:1:f];
p= (sin(m).^2.).*cos(2*m);
pd= sin(2*m).*(2*cos(2*m)-1);
figure; plot(m,p,'-',m,pd,'--');
xlabel('Position along x axis'); ylabel('Position along y axis');
title('Problem 7'); legend('f(x)', 'Derivative of f(x)');

%Problem 15
t= linspace(-4,4);
r= (3.3-0.4*t.^2.).*sin(t);
m= (2.5-0.3*t.^2.).*cos(t);
figure; plot(r,m,'-.');
title('Problem 15');

%Problem 27
R= 4;
L= 1.3;
V= 12;
time= [0 0.5];
time2= [0.5 2];
y2= exp(-(R*time2)/L)*(V/R)*(exp((0.5*R)/L)-1);
y1= (V/R).*(1-exp((-R*time)/L));
figure; plot(time,y1,'b');hold on;
plot(time2,y2,'b'); hold off;
xlabel('time(s)'); ylabel('Current i(t)');
title('Problem 27');