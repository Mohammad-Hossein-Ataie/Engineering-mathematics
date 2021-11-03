t=0:.01:2; %t = [0 0,1 0,2 0,3...2] (TIME INTERVAL)
f = 5; %frequency
y = sin(2*pi*f*t); %Sinusoidal signal
figure(1); %Opens a graphical window
plot(t,y); %plot the signal
xlabel('Time(sec)');
ylabel('Amplitude');
title('sin(2\pi*5*t)');
fs = numel(y)/2; %Sampling frequency
xFft = linspace(-fs/2, fs/2, numel(y)); 
yFft = fft(y); 
yFft = fftshift(yFft); 
yFft = abs(yFft); 
figure(2);
plot(xFft, yFft); 
xlabel('Frequency(Hz)');
ylabel('Magnitude');
title('Fourier Transform of Signal');