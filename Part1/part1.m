tmin = 0;
tmax = 10;
dt = (tmax - tmin)/100;
time = tmin:dt:tmax;
f = 1/2;
y = cos(2*pi*f*time);
plot(time,y);
xlabel('time');
ylabel('Y');
title('Cosine func in time domain');