close all;
clear all;

M = 1000;
a = 0.9;
L = 12;
n = 0:L-1;
xn = a.^n;
w = 0:2*pi/M:(2*pi*(M-1)/M);

for ii = 1:M
    xw(ii)=sum(xn.*exp(-j*w(ii).*n));
end

K = 16;
ww = 0:2*pi/K:(2*pi*(K-1)/K);

for ii = 1:K
    fw(ii) = sum(xn.*exp(-j*ww(ii).*n));
end
figure
plot(w,abs(xw));
hold on;
% stem(ww,abs(fw));

fn = ifft(fw,K);
figure
stem(xn,'b');
hold on
stem(fn,'r*');