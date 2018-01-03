%Homework 8- Kristi Hicks
clear all; close all; clc;

%Problem 1a
syms x;
s1= x^2*(x-6)+4*(3*x-2)
s2= (x+2)^2-8*x
a= simplify(s1*s2)
%Problem 1b
b= simplify(s1/s2)
%Problem 1c
c= simplify(s1+s2)
%Problem 1d
d= subs(c,5)

%Problem 3
syms x y
T= sqrt(x)-y^2;
S= x+sqrt(x)*y^2+y^4;
Q= S*T
QS= simplify(Q)
subs(QS,{x,y},{9,2})

%Problem 4a
syms x y
Sa= (x+2)*(x+0.5)*(x-2)*(x-4.5);
P= expand(Sa)
%Problem 4b
Sp= x^6-6.5*x^5-58*x^4+167.5*x^3+728*x^2-890*x-1400;
SpFF= factor(Sp)

%Problem 16a
syms x
SA= x^3/sqrt(1-x^2);
ISA= int(SA)
%Problem 16b
SB= x^2*cos(x);
ISB= int(SB)

%Problem 23a
syms w t T V
vt= V*cos(w*t);
vt2= vt^2;
vrms= sqrt(int(vt2,t,0,T)/T)
vrmsA= subs(vrms,T,2*pi/w)
%Problem 23b
VT= 2.5*cos(w*t)+3;
VT2= VT^2;
VRMS= sqrt(int(VT2,t,0,T)/T)
VRMSA= subs(VRMS,T,2*pi/w)
VRMSN= double(VRMSA)





