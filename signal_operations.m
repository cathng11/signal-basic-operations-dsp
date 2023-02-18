% left & right bounds of time axis (in samples)
nL = 10;
nR = 10;

% processing
n = -nL:nR; % create discrete-time vector
u = [zeros(1,nL), 1, ones(1,nR)]; % generate u[n]
subplot(4,2,1)
stem(n,u,'fill'); % plot u[n]
title('Unit step u[n]');
xlabel('Time (n)');
ylabel('Amplitude');

up1 = [zeros(1,nL-1), 1, ones(1,nR+1)]; % generate u[n+1]
subplot(4,2,2)
stem(n,up1,'fill'); % plot u[n+1]
title('Shifted unit step u[n+1]');
xlabel('Time (n)');
ylabel('Amplitude');

um5 = [zeros(1,nL+5), 1, ones(1,nR-5)]; % generate u[n-5]
subplot(4,2,3)
stem(n,um5,'fill'); % plot u[n-5]
title('Shifted unit step u[n-5]');
xlabel('Time (n)');
ylabel('Amplitude');

x3 = n; % generate x3[n]=n
subplot(4,2,4)
stem(n,x3,'fill'); % plot x3[n]
title('Signal x3[n]=n');
xlabel('Time (n)');
ylabel('Amplitude');

u2m = [ones(1,nL+2), 1, zeros(1,nR-2)]; % generate u[2-n]
subplot(4,2,5)
stem(n,u2m,'fill'); % plot u[2-n]
title('Shifted & reversed unit step u[2-n]');
xlabel('Time (n)');
ylabel('Amplitude');

x1 = up1-um5; % generate x1[n]
subplot(4,2,6)
stem(n,u2m,'fill'); % plot x1[n]
title('x1[n]');
xlabel('Time (n)');
ylabel('Amplitude');

x2 = x3.*u2m; % generate x2[n]
subplot(4,2,7)
stem(n,u2m,'fill'); % plot x2[n]
title('x2[n]');
xlabel('Time (n)');
ylabel('Amplitude');

x = x1.*x2; % generate x[n]=x1[n]*x2[n]
subplot(4,2,8)
stem(n,x,'fill'); % plot x[n]
title('x[n]');
xlabel('Time (n)');
ylabel('Amplitude');

