f1 = 4;
f2 = 8;
f3 = 16;
a1 = 10;
a2 = 20;
a3 = 40;

t = 0:0.001:1;

y1 = a1*sin(2*pi*f1*t);
y2 = a2*sin(2*pi*f2*t);
y3 = a3*sin(2*pi*f3*t);

y = y1+y2+y3;

figure(1);
plot(t,y);
xlabel('Time -->');
ylabel('Amplitude -->');
title('Composite signal');

disp(y);