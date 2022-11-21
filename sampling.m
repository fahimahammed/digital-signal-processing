clc
clear all;
close all;

f = 5;
a = 12;
t = 0:0.005:1;

analogSingnal = a*sin(2*pi*f*t);
subplot(2,1,1);
plot(t, analogSingnal);
stem(t, analogSingnal);
title('Analog sine wave');

fs = 2*f;
n = 0:1/fs:1;
sampledSignal = a*sin(2*pi*f*n);
subplot(2,1,2);
%plot(n, sampledSignal);
stem(n, sampledSignal);
title('Sampled with nyquist rate');