%% Midterm
clc;
clear;
close all;
%% Problem 1

%% Problem 2
A1 = [10 3 1 12; 2 4 0 0; 1 0 2 1];
A2 = [10 5 2; 5 3 3; 2 3 2];
A3 = [10 5 2; 5 -3 3; 2 3 2];
A4 = [10 5 2; -5 3 1; -2 -1 2];
A5 = [10 -5 2; -5 3 -1; 2 -1 2];
A6 = [10 0 0; 0 3 0; 0 0 2];
A7 = [2 -1 -1; -1 2 -1; -1 -1 2];

% Part a)
det_A2 = det(A2)
det_A3 = det(A3)
det_A4 = det(A4)
det_A5 = det(A5)
det_A6 = det(A6)
det_A7 = det(A7)

eig_A2 = eig(A2)
eig_A3 = eig(A3)
eig_A4 = eig(A4)
eig_A5 = eig(A5)
eig_A6 = eig(A6)
eig_A7 = eig(A7)

null_A1 = null(A1)
null_A2 = null(A2)
null_A3 = null(A3)
null_A4 = null(A4)
null_A5 = null(A5)
null_A6 = null(A6)
null_A7 = null(A7)


%% Problem 6

m = 0;
v = 1;
delta = 0.001;

n = 100;
x = -2*sqrt(3):delta:2*sqrt(3);
gaus = normpdf(x,m,1);
scale = sqrt(v)*n;


rectn = scale/(2*sqrt(3))*rectangularPulse(-sqrt(3)/scale, sqrt(3)/scale, x);
pdf_n = rectn;
for k = 1:n-1
    pdf_n = conv(pdf_n,rectn, 'same')*delta;
end
s_n = pdf_n;



figure
title('Central Limit theorem with n = 4')
hold on
plot(x,s_n, 'linewidth',2)
plot(x,gaus, 'linewidth',2)
legend('sn', 'gaussian')



