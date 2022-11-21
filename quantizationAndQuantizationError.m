clc
clear all;
close all;

f = 10;
a = 5;
fs = 100;
n = 0:1/fs:1;
y = a*sin(2*pi*f*n);
subplot(3,1,1);
plot(n,y);
title('Original signal');

bit = 3;
yMax = max(y);
yMin = min(y);

step = (yMax - yMin)/(2.^bit);
quantizedSignal = round(y/step) * step;
subplot(3,1,2);
plot(n, quantizedSignal);
title("Quantized signal");
%hold on;
qError = y - quantizedSignal;
subplot(3,1,3);
plot(n, qError);
title("Quantization error");
