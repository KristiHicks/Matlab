%Homework 4- Kristi Hicks
clear all; close all; clc;
%Problem 6
for r= 1:3
    for c= 1:5
    y(r,c)= r.^c./(r+c);
    end
end
y

%Problem 8a
Bos= [2.67 1 1.21 3.09 3.43 4.71 3.88 3.08 4.10 2.62 1.01 5.93];
Sea= [6.83 3.63 7.2 2.68 2.05 2.96 1.04 0 0.03 6.71 8.28 6.85];
Btotal = sum(Bos);
Stotal = sum(Sea);
BAvg = mean(Bos);
SAvg = mean(Sea);
fprintf('Total Precipitation for Boston: %.2f in.\n\n', Btotal);
fprintf('Total Precipitation for Seattle: %.2f in.\n\n', Stotal);
fprintf('Monthly Average Precipitation for Boston: %.2f in.\n\n', BAvg);
fprintf('Monthly Average Precipitation for Seattle: %.2f in.\n\n', SAvg);
%Problem 8b
Byes = 0;
for k= 1:length(Bos)
    if Bos(k) > BAvg
        Byes= Byes+1;
    end
end
Syes = 0;
for k= 1:length(Sea)
    if Sea(k) > SAvg
        Syes = Syes+1;
    end
end
fprintf('How many months in Boston were above the average: %i months\n\n', Byes)
fprintf('How many months in Seattle were above the average: %i months\n\n', Syes)
%Problem 8c
yes=0;
for k=1:length(Bos)
    if Bos(k) < Sea(k)
        yes = yes+1;
    end
end
fprintf('How many months in Boston were lower than Seattle: %i months\n\n', yes)
BA= 1:12;
month=BA(Bos<Sea);
fprintf('On Which Months: %i\n')
disp(month);

%Problem 9
n=0;
stop=0;
while stop <=120
    n= n+1;
    if rem(n,2)==0 && rem(n,13)==0 && rem(n,16)==0
            stop = sqrt(n);
    end
end
fprintf('The required number is: %i\n', n)

%Problem 18
x= [4.5 5 -16.12 21.8 10.1 10 -16.11 5 14 -3 3 2];
for k= 1:length(x)-1
    for j= k+1:length(x)
        if x(j) < x(k)
            temp = x(k);
            x(k)= x(j);
            x(j) = temp;
        end
    end
end
x

