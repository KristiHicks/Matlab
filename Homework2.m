%Kristi Hicks
%Homework 2
clear all; close all; clc;
%Problem 5
x= 0.85;
y= 12.5;
column = [y; y^x; log(y/x); x*y; x+y]
%Problem 6
a= 3.5;
b= -6.4;
row = [a a^2 a/b a*b sqrt(a)]
%Problem 7
s = [1:6:43]
%Problem 8
r= linspace(96,2,11)
%Problem 16
A= [2:3:17];
B= [3:4:15];
c= [A B]
%Problem 27a
g= [3 -1 5 11 -4 2];
p= [7 -9 2 13 1 -2];
m= [-2 4 -7 8 0 9];
one= [g; p; m]
%Problem 27b
two= [p; m; g];
three= two'
%Problem 35
C= [1.5 2 2.5 3 3.5 4 4.5 5 9.6 9.1 8.6 8.1 7.6 7.1 6.6 6.1];
D= reshape(C,4,4);
D=D';
Da= [D(1,1) D(1,2) D(1,3) D(1,4) D(3,1) D(3,2) D(3,3) D(3,4)]'
%Problem 35b
Db= [D(1,2) D(2,2) D(3,2) D(4,2) D(1,4) D(2,4) D(3,4) D(4,4)]
%Problem 35c
Dc= [D(1,1) D(1,2) D(2,2) D(3,2) D(4,2) D(4,1) D(4,2) D(4,3)]



%Chapter 3

%Problem 5
sphere= [50 100 150 200 250 300];
radius= sqrt(sphere/pi)/2;
V= (4*pi*radius.^3)/3;
ball= [sphere; V]'
%Problem 7
v= 24;
R= 3800;
F= 4000*(10^-6);
t= [0:2:20];
contime= R*F;
voltage= v*(1-exp(-t/contime));
current= (v/R)*exp(-t/contime);
final= [t; voltage; current]'
%Problem 29
apple= [1 -3 5; 2 2 4; -2 0 6];
orange= [0 -2 1; 5 1 -6; 2 7 -1];
banana= [-3 4 -1; 0 8 2; -3 5 3];
twentyninea= apple + orange %A+B
twentynineb= orange + apple %B+A
%Problem 29b
twentyninec= apple + (orange + banana) %A+(B+C)
twentynined= (apple+orange)+ banana %(A+B)+C
%Problem 29c
twentyninee= 3*(apple + banana) %3(A+C)
twentyninef= 3*apple + 3*banana %3A+3C
%Problem 29d
twentynineg= apple*(orange+banana) %A*(B+C)
twentynineh= apple*orange + apple*banana %A*B + A*C
%Problem 34
dog= [2.5 -1 3 1.5 -2; 3 4 -2 2.5 -1; -4 3 1 -6 2; 2 3 1 -2.5 4; 1 2 5 -3 4];
cat= [57.1; 27.6; -81.2; -22.2; -12.2];
thirtyfour= dog\cat
%Problem 36
V1=18; V2=18; V3=28; V4=12;
R1=4; R2=4; R3=4; R4=6; R5=2; R6=2.5; R7=3;
law= [-(R1+R2+R3) R2 R3 0
    -(R2+R4+R5) R2 R4 R5
    -(R5+R6+R7) R5 R6 R7
    -(R3+R7) R3 R7 0];
judge= [-V1; V2; V3; -V4];
I= law\judge



