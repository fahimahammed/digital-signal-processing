clc 
clear all;
close all;

f = 5;
a = 10;
t = 0:0.005:1;
y = a*sin(2*pi*f*t);
subplot(3,1,1);
plot(t, y);
title('Original Signal');

%under sampling
fs = 50;
n1 = 0:1/fs:1;
y1 = a*sin(2*pi*f*n1);
subplot(3,1,2);
stem(n1, y1);
title('Under sampling');

%over sampling
fs = 350;
n2 = 0:1/fs:1;
y2 = a*sin(2*pi*f*n2);
subplot(3,1,3);
stem(n2, y2);
title('Over sampling');