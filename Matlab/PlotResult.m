close all;
load('output_signal_0.txt')
load('YError_signal_0.txt')

Fs = 44100;

figure
len = size(YError_signal,1);
plot(YError_signal(1:len))
title('Sweep input');
xlabel('n');
ylabel('y(n)');

figure
len = size(output_signal,1);
plot(output_signal(1:len))
title('Sweep input');
xlabel('n');
ylabel('e(n)');

t2 = 0:length(output_signal)-1;
N = length(output_signal);

freqHz1 = (0:1:length(abs(fft(output_signal)))-1)*Fs/N
freqHz2 = (0:1:length(abs(fft(YError_signal)))-1)*Fs/N

figure
plot(freqHz1,abs(fft(output_signal)))

figure
plot(freqHz1,abs(fft(YError_signal)))

soundsc(output_signal,44100)





% subplot(2,1,2);
% plot(y_signal)
% title('Filtered output');
% xlabel('n');
% ylabel('y(n)');
% 
% load('fft_mag.txt')
% 
% figure,
% subplot(2,1,1);
% fftLen = 1024;
% fftLen2 = fftLen/2; 
% fftMag = abs(fft(x_signal))/fftLen2;
% plot(fftMag(1:fftLen2));
% title('FFT MATLAB Sweep');
% xlabel('m');
% ylabel('|Y(m)|');
% 
% subplot(2,1,2);
% plot(fft_mag(1:fftLen2));
% title('FFT CrossCore Sweep');
% xlabel('m');
% ylabel('|Y(m)|');
