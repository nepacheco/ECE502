clc; clear; close all;

%% Question 4
x = -20:0.0001:20;
f1 = 1./(sqrt(2.*pi).*1/4).*exp(-(x-1).^2./(2.*1/16));
fneg1 = 1./(sqrt(2.*pi).*1/4).*exp(-(x+1).^2./(2.*1/16));

T = 1/2 * 1/16 * log(3);
index = round(20/0.0001 + T/.0001)

trapz(f1(1:index))
trapz(fneg1(index:end))

figure
plot(x,f1);
hold on
plot(x,fneg1)


%% Question 7
figure
y = 0.001:0.001:20;
sigma = 1/8
f = 1./y.*(1/(sqrt(2*pi)*sqrt(sigma)).*exp(-(log(y).^2)./(2*sigma)));
plot(y,f)
hold on
sigma = 8;
f8 = (1./y).*(1/(sqrt(2*pi)*sqrt(sigma)).*exp(-(log(y).^2)./(2*sigma)));

% exponent = (1/(sqrt(2*pi)*8));%.*exp(-(log(y).^2)./(2*64));
% plot(y,exponent)
plot(y,f8)

legend('f','f8')

% x = -3:0.001:3;
% fx = 1./(sqrt(2.*pi).*1/8).*exp(-(x-0).^2/(2.*1/64));
% plot(x,fx)


% figure
% y = 0.001:0.001:5;
% F = trapz(f);
% F8 = trapz(f8);
% plot(y,F)
% hold on
% plot(y,F8)
