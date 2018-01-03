%Homework 7- Kristi Hicks
clear all;close all; clc;

%Problem 1
F= @(x) exp(0.3*x)-x^2+4;
figure; fplot(F, [0 5]);
xlabel('x'); ylabel('y');
r= fzero(F,3)

%Problem 5
mu= 0.55; g= 9.81; m=25;
Fun= @(x) mu*m*g./(cosd(x)+mu*sind(x));
x= 1:90;
F1= Fun(x);
figure; plot(x,F1); 
xlabel('Theta (degree)'); ylabel('F (N)');
Fs= 150;
Funs= @(x) mu*m*g./(cosd(x)+mu*sind(x))-Fs;
ths= fzero(Funs, 70)

%Problem 11
figure; fplot(Fun, [1, 45]);
xlabel('x (m)'); ylabel('F (N)');
[xmin Fmin]= fminbnd(Fun, 10, 30)

%Problem 16a
Fa= @(x) 0.5*x.^3./(1+2*sqrt(x));
qa= quadl(Fa,2,10)
%Problem 16b
Fb= @(x) 0.5+cos(1.2*x)./(x+2).*2;
qb= quadl(Fb,0,9)

%Problem 18
t= [0:7];
v= [0 14 39 69 95 114 129 139];
vfps= v*5280/3600;
xft= trapz(t, vfps)


