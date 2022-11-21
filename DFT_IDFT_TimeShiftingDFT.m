clc
clear all;
close all;

x = input('Enter the sequence: ');
N = input('Enter the point: ');

if(N>length(x))
    for i=1:N-length(x)
         x = [x 0];
    end
end
 
Xk = calcDFT(x, N);

xs = circshift(x, [0 3]);

Xks = calcDFT(xs, N);
%SS = fft(x);
Yn = calcIDFT(Xk, N);

K = 0:1:N-1;

subplot(4,1,1)
stem(K, x);
xlabel('Points -->');
ylabel('Value of sequence -->');
title('Original sequence');

subplot(4,1,2);
stem(K, Xk);
xlabel('Points -->');
title('DFT signal');

subplot(4,1,3);
stem(K, Xks);
xlabel('Points -->');
title('Time reversed DFT signal');

subplot(4,1,4);
stem(K, Yn);
xlabel('Points -->');
ylabel('Value of sequence -->');
title('IDFT Signal');

function X = calcDFT(x, N)
    X = [];
    xx = 0;
    for k=0:N-1
        for n=0:N-1
            xx = xx + x(n+1) * exp(-j*2*pi*k*n/N);
        end
        X = [X xx];
        xx = 0;
    end
end

function Y = calcIDFT(X, N)
    Y=[];
    yy = 0;
    for n=0:N-1
        for k=0:N-1
            yy = yy+X(k+1)*exp(j*2*pi*k*n/N);
        end
        yy = (1/N)*real(yy);
        Y = [Y yy];
        yy = 0;
    end
end