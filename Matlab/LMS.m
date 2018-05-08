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
T = 6;
t = 0:ts:T;

s1 = A*sin(2*pi*f1*t);

s2 = A*sin(2*pi*f2*t);

s3 = A*sin(2*pi*f3*t);

s = s1+s2+s3; % Vores ønsket signal

ALI_G = ALI_G(160001:length(food)+160000); %Bruges når s er støjen
%ALI_G = ALI_G(160001:481600); %Bruges når StarshipNoise er støjen
%ALI_G = ALI_G(160001:length(food)+160000); %Bruges når food er støjen

food = food';
%StarshipNoise = StarshipNoise(1:length(ALI_G));

%noise = randn(1,length(s))*0.1+s1+s3; %Kun støj

noise = fixed16(food);

d = fixed16(ALI_G+noise); %Ønsket signal + støj

%soundsc(d,fs)

%%
%Create FIR filter
my = 0.01; % some number 0.004
W = zeros(1,256);

for n = 1:length(d)
    yn = 0;
    for m = 1:length(W)
        if n > m
            yn = yn + fixed32(W(m)*noise(n-m));
        end
    end
    y(n) = yn;
    e(n) = d(n) - y(n);
    for m = 1:length(W)
        if n > m
            W(m) = W(m) + fixed32(my*noise(n-m)*e(n));
        end
    end
end

freqz(W,1);

t2 = 0:length(y)-1;
figure
subplot(221),plot(t2,d),ylabel('Desired Signal'),
subplot(222),plot(t2,noise),ylabel('Noise'),
subplot(223),plot(t2,e),ylabel('Error'),
subplot(224),plot(t2,y),ylabel('Adaptive Desired output');
figure
subplot(221),plot(t2,abs(fft(d))),ylabel('Desired Signal'),
subplot(222),plot(t2,abs(fft(noise))),ylabel('Noise'),
subplot(223),plot(t2,abs(fft(e))),ylabel('Error'),
subplot(224),plot(t2,abs(fft(y))),ylabel('Adaptive Desired output');

% figure
% plot(20*log10(abs(fft(e))))
% figure
% plot(20*log10(abs(fft(d))))
% sound(e,fs)
% sound(y,fs)
