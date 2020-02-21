T = 10;
w = -5:0.001:5;
S1 = (1./(T*w).^2) .* (2 - 2.*cos(T.*w));
S2 = sinc(w*T/2).^2;

plot(w,S1);
hold on
plot(w,S2);
legend('From Laplace', 'From Fourier')