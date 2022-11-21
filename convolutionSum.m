clc
clear all;
close all;

x = input('Enter the first sequence: ');
h = input('Enter the secound sequence: ');

nx = length(x);
nh = length(h);

X = [x, zeros(1, nh)];
H = [h, zeros(1, nx)];

for i=1:nx+nh-1
    Y(i) = 0;
    for j=1:nx
        if(i-j+1>0)
            Y(i) = Y(i) + X(j) * H(i-j+1);
        else
        end
    end
end

subplot(2,1,1);
stem(Y);
ylabel('Y[n]');
xlabel('n');
title('Convolution sum');

subplot(2,1,2);
Z = conv(x,h);
stem(Z);
ylabel('Y[n]');
xlabel('n');
title('Convolution sum');
