clc;
close all;
clear;



%%
%Create signal and signal+noise

[StarshipNoise,fs1] = audioread('Noise.wav');
[ALI_G] = audioread('ali g harvard speach part 2.mp3');
[food,fs2] = audioread('FoodProc.wav');

f1 = 11000;
f2 = 5500;
f3 = 2750;

fs = 44100;
A = 0.01;
ts = 1/fs;

T = 0.02321; %% 0.02321 = 1024



t = 0:ts:T;

s1 = A*sin(2*pi*f1*t);

s2 = A*sin(2*pi*f2*t);

s3 = A*sin(2*pi*f3*t);

s = s1+s2+s3; % Vores ønsket signal

ALI_G = ALI_G(230001:length(s)+230000); %Bruges når s er støjen

%ALI_G = ALI_G(230001:481600); %Bruges når StarshipNoise er støjen
%ALI_G = ALI_G(230001:length(food)+230000); %Bruges når food er støjen


food = food';
%StarshipNoise = StarshipNoise(1:length(ALI_G));

%noise = randn(1,length(s))*0.1+s1+s3; %Kun støj

noise = fixed16(s);

d = fixed16(ALI_G+noise); %Ønsket signal + støj

%soundsc(d,fs)

%% greate txt files
y16 = noise*2^15;
fid = fopen('noise_signal.txt', 'w');
for i=1:length(y16)
    noise_text = num2str(round(y16(i)));
    fprintf(fid, '%s,\r\n', noise_text);
end
fclose(fid);

y16_2 = d*2^15;
fid = fopen('d_signal.txt', 'w');
for i=1:length(y16_2)
    d_text = num2str(round(y16_2(i)));
    fprintf(fid, '%s,\r\n', d_text);
end
fclose(fid);

%%
%Create LMS FIR filter
my = 0.01; % some number 0.01
W = zeros(1,32);
W(1) = 1;

for n = 1:length(d) %run every sample 
    yn = 0;
    for m = 1:length(W) %make new filteret sample 
        if n > m
            yn = yn + fixed32(W(m)*noise(n-m));
        end
    end
    y(n) = yn;
    e(n) = d(n) - y(n);
    for m = 1:length(W) %make new koefficient  
        if n > m
            W(m) = W(m) + fixed32(my*noise(n-m)*e(n));
        end
    end
end

freqz(W,1);

t2 = 0:length(y)-1;
figure

% subplot(221),plot(t2,d),ylabel('Desired Signal'),
% subplot(222),plot(t2,noise),ylabel('Noise'),
% subplot(223),plot(t2,e),ylabel('Error'),
% subplot(224),plot(t2,y),ylabel('Adaptive Desired output');

subplot(221),plot(t2,d),ylabel('d(n)'),
subplot(222),plot(t2,noise),ylabel('x(n)'),
subplot(223),plot(t2,e),ylabel('e(n)'),
subplot(224),plot(t2,y),ylabel('y(n)');

% N = length(y);
% array_y = (0:N-1)*e/N;
% figure
% plot(array_y,abs(fft(e)));
% xlabel('Random signal with 785 sinus, freq domain');
N = length(d);

freqHz = (0:1:length(abs(fft(d)))-1)*fs/N;

figure
subplot(221),plot(freqHz,abs(fft(d))),ylabel('d(n)'),
subplot(222),plot(freqHz,abs(fft(noise))),ylabel('x(n)'),
subplot(223),plot(freqHz,abs(fft(e))),ylabel('e(n)'),
subplot(224),plot(freqHz,abs(fft(y))),ylabel('y(n)');

figure
subplot(221),plot(t2,e),ylabel('e(n) tid'),
subplot(222),plot(t2,y),ylabel('y(n) tid');
subplot(223),plot(freqHz,abs(fft(e))),ylabel('e(n) frek'),
subplot(224),plot(freqHz,abs(fft(y))),ylabel('y(n) frek');

% figure
% plot(20*log10(abs(fft(e))))
% figure
% plot(20*log10(abs(fft(d))))
% sound(e,fs)
% sound(y,fs)
