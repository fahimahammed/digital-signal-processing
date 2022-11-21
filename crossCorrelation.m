clc;
clear all;
close all;

x = input('Enter the first sequence: ');
y = input('Enter the secound sequence: ');

nx = length(x);
ny = length(y);
yy = fliplr(y);
X = [x, zeros(1, ny)];
Y = [yy, zeros(1, nx)];

for i=1:nx+ny-1
    Z(i) = 0;
    for j=1:nx
        if(i-j+1>0)
            Z(i) = Z(i) + X(j)*Y(i-j+1);
        end
    end
end

ZZ = xcorr(x,y);