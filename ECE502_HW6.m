clc; clear; close all
%% Problem 3 Visualizing the Central Limit Theorem

m = 0;
v = 1;
delta = 0.001;

x = -2*sqrt(3):delta:2*sqrt(3);
rect = 1/(2*sqrt(3))*rectangularPulse(-sqrt(3), sqrt(3), x);
gaus = normpdf(x,m,v);

n = 2;
rect2 = sqrt(n)/(2*sqrt(3))*rectangularPulse(-sqrt(3)/sqrt(n), sqrt(3)/sqrt(n), x);
pdf_2 = sqrt(n)/(2*sqrt(3))*rectangularPulse(-sqrt(3)/sqrt(n), sqrt(3)/sqrt(n), x);
for k = 1:n-1
    pdf_2 = conv(pdf_2,rect2, 'same')*delta;
end
s_2 = pdf_2;

n = 3;
rect3 = sqrt(n)/(2*sqrt(3))*rectangularPulse(-sqrt(3)/sqrt(n), sqrt(3)/sqrt(n), x);
pdf_3 = sqrt(n)/(2*sqrt(3))*rectangularPulse(-sqrt(3)/sqrt(n), sqrt(3)/sqrt(n), x);
for k = 1:n-1
    pdf_3 = conv(pdf_3,rect3, 'same')*delta;
end
s_3 = pdf_3;

n = 4;
rect4 = sqrt(n)/(2*sqrt(3))*rectangularPulse(-sqrt(3)/sqrt(n), sqrt(3)/sqrt(n), x);
pdf_4 = sqrt(n)/(2*sqrt(3))*rectangularPulse(-sqrt(3)/sqrt(n), sqrt(3)/sqrt(n), x);
for k = 1:n-1
    pdf_4 = conv(pdf_4,rect4, 'same')*delta;
end
s_4 = pdf_4;



figure
title('Central Limit theorem with n = 1, 2, 3, 4')
hold on
plot(x,rect, 'linewidth',2)
plot(x,s_2, 'linewidth',2)
plot(x,s_3, 'linewidth',2)
plot(x,s_4, 'linewidth',2)
plot(x,gaus, 'linewidth',2)
legend('rect', 's2', 's3', 's4', 'gaussian')

%% Problem 5: Bernoulli Convergence

pd = makedist('Binomial', 'N', 1, 'p', 0.5);
bernoulliArray = random(pd, 1, 50);
Yn = [];
for n = 1:50
    identity = ones(n,1);
    xSequence = 1;
    for i = 1:n
        xSequence = xSequence*bernoulliArray(i);
    end
    Yn = [Yn; (2^n*xSequence)];
end

figure
subplot(211)
stem(bernoulliArray)
title('Sequence of 50 Bernoulli Variables')
subplot(212)
plot(Yn')
title('Value of Yn from n = 1 to 50 based on bernoulli variables')