close all;
load('output_signal_1.txt')
load('YError_signal_1.txt')

Fs = 44100;

figure
len = size(YError_signal_1,1);
plot(YError_signal_1(1:len))
title('Sweep input');
xlabel('n');
ylabel('y(n)');

figure
len = size(output_signal_1,1);
plot(output_signal_1(1:len))
title('Sweep input');
xlabel('n');
ylabel('e(n)');

t2 = 0:length(output_signal_1)-1;
N = length(output_signal_1);

freqHz1 = (0:1:length(abs(fft(output_signal_1)))-1)*Fs/N
freqHz2 = (0:1:length(abs(fft(YError_signal_1)))-1)*Fs/N

figure
plot(freqHz1,abs(fft(output_signal_1)))

figure
plot(freqHz2,abs(fft(YError_signal_1)))

soundsc(output_signal_1,44100)


figure
subplot(221),plot(output_signal_1(1:len)),title('Output tid'),
subplot(222),plot(YError_signal_1(1:len)),title('y(n) param tid'),
subplot(223),plot(freqHz1,abs(fft(output_signal_1))),title('Output frek'),
subplot(224),plot(freqHz2,abs(fft(YError_signal_1))),title('y(n) param frek');



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
