clc;
clear all;
close all;

x = input('Enter the sequence: ');
nx = length(x);
h = fliplr(x);

X = [x, zeros(1,nx)];
H = [h, zeros(1,nx)];

for i=1:nx+nx-1
    Y(i)=0;
    for j=1:nx
        if(i-j+1>0)
            Y(i) = Y(i) + X(j)*H(i-j+1);
        end
    end
end

Z = xcorr(x,x);
