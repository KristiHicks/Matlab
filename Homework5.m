%Homework 5: Kristi Hicks
clear all; close all; clc;

%Problem 1a
x= [-1.5 5];
y=homework5one(x);
disp('The values of y(x) are: ')
disp(y)
%Problem 1b
x= [-2:.1:6];
plot(x,homework5one(x));
figure; title('y(x)'); xlabel('x'); ylabel('y');

%Problem 2a
th= [pi/6, 5*pi/6];
r= homework5two(th);
disp('The values of r(theta) are:')
disp(r)
%Problem 2b
th= linspace(0,2*pi,200);
polar(th,homework5two(th));
title('r(theta)')

%Problem 10
g= [3.7 3 3.3 2 0 4 1.3 4];
h= [4 3 3 2 3 4 3 3];
avg= homework5three(g,h);
fprintf('The students grade point average is %.2f\n', avg)

%Problem 18a
d=100;
b= homework5four(d);
if b>= 0
    disp('The binary decomposition is:')
    disp(b)
end
%Problem 18b
d=1002;
b= homework5four(d);
if b>=0
    disp('The binary decomposition is:')
    disp(b)
end
%Problem 18c
d= 52601;
b= homework5four(d);
if b>=0
    disp('The binary decomposition is:')
    disp(b)
end
%Problem 18d
d= 2000090;
b= homework5four(d);
if b>=0
    disp('The binary decomposition is:')
    disp(b)
end

