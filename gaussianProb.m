function Q = gaussianProb(x)
a = 1/pi;
b = 2*pi;
Q = 1/((1-a)*x + a*sqrt(x^2 + b)) * 1/sqrt(2*pi) * exp(-x^2/2);
end

