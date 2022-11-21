clc
clear all;
close all;

a = 2;
f = 10;
fs = 120;
n = 0:1/fs:1;
sampledSignal = a*sin(2*pi*f*n);

sMax = max(sampledSignal);
sMin = min(sampledSignal);

for bit=1:4
    lebel = 2.^bit;
    step = (sMax-sMin)/lebel;
    Q = round(sampledSignal /step ) * step;
    qE = sampledSignal - Q;
    subplot(4,1,bit);
    plot(n, Q);
    hold on;
    plot(n, qE);
    legend('Quntized','Error','Location','Southeast');
    title(sprintf('Quantization and Quantization Error for level = %g', lebel));
    disp(Q);
end





