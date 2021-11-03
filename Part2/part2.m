% In the name of God
% Part 2
clearvars;
clc; % clear command screen
[Y1, FS1]=audioread('violin-C4.wav'); %y1 is sampled data, and a sample rate is FS1
[Y2, FS2]=audioread('violin-G4.wav'); %y1 is sampled data, and a sample rate is FS1

 figure(1);
 plot(Y1);
 xlabel('Time(sec)');
 ylabel('Amplitude C4');
 figure(4);
 plot(Y2);
 xlabel('Time(sec)');
 ylabel('Amplitude G4');

fs = 3000; %Sampling frequency
%xFft = linspace(1000, fs/2, numel(Y1)); 
xFft1=(0:length(Y1)-1)*fs/(length(Y1));
yFft1 = fft(Y1); 
yFft1 = fftshift(yFft1); 
yFft1 = abs(yFft1); 
figure(2);
plot(xFft1, yFft1);
 xlabel('Frequency(Hz)');
 ylabel('C4 Power');
fs = 300; %Sampling frequency
%xFft = linspace(1000, fs/2, numel(Y2));
xFft2=(0:length(Y2)-1)*fs/(length(Y2));
yFft2 = fft(Y2); 
yFft2 = fftshift(yFft2); 
yFft2 = abs(yFft2); 
figure(3);
plot(xFft2, yFft2);
xlabel('Frequency(Hz)');
 ylabel('G4 Power');
sound(Y1)
pause(10)
sound(Y2)