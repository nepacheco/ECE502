clc; clear; close all;
%% Problem 3
syms x1 x2 s real
x = [x1;x2];
C = [4 4*exp(-2*s); 4*exp(-2*s) 4];
m = [0 0]';

exponent = 1/2*(x-m)'*inv(C)*(x-m);
simplify(exponent, 'Steps', 20, 'All', true)
f = exp(-1/2*(x-m)'*inv(C)*(x-m))/(2*pi)*inv(C^(1/2));
