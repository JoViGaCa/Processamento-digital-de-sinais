%% Prática 3 João Carvalho
clear all
clc
close all

%% Criar sinal fictício

N = 100;
f = 1;
fs = 20;
W = 2*pi*f/fs;
n = 0:N-1;

x = sin(W*n);

figure
stem(n,x,'filled','k');
ylabel('Amplitude: x[n]');
xlabel('Amostra: n');
ylim([-1.1 1.1]);

%% dftmxt faz a matriz dft

F = dftmtx(N);

%% Calculando dft

X = F*x';
% Calcula a frequência contínua
Omega = 0:2*pi/N:2*pi*(N-1)/N;
f_hz = Omega*fs/(2*pi);

figure
stem(f_hz,abs(X), 'filled','r');
xlabel('Frequência (Hz):');
ylabel('|X(\Omega)|');
ylim([-1 51]);

%% Modificando o espectro
% Metade do espectro é redundante
% Divide por N, multiplica por 2

Xabs = abs(X);
Xabs = Xabs(1:N/2+1);
Xabs(2:end) = Xabs(2:end)*2;
f_hz_mod = f_hz(1:N/2+1);

figure
stem(f_hz_mod,Xabs, 'filled','r');
xlabel('Frequência (Hz):');
ylabel('|X(\Omega)|');
ylim([-1 101]);

% Pela função fft
% X = fft(x)

%% Quando a frequência não está no grid
N = 100;
f = 1.1;
fs = 20;
W = 2*pi*f/fs;
n = 0:N-1;

x = sin(W*n);

F = dftmtx(N);

X = F*x';
% Calcula a frequência contínua
Omega = 0:2*pi/N:2*pi*(N-1)/N;
f_hz = Omega*fs/(2*pi);

Xabs = abs(X);
Xabs = Xabs(1:N/2+1);
Xabs(2:end) = Xabs(2:end)*2;
f_hz_mod = f_hz(1:N/2+1);

figure
stem(f_hz_mod,Xabs, 'filled','r');
xlabel('Frequência (Hz):');
ylabel('|X(\Omega)|');
ylim([-1 101]);

%% Aumentar o numero de pontos

N = 100;
f = 1 + pi;
fs = 20;
W = 2*pi*f/fs;
n = 0:N-1;

x = sin(W*n);
figure
stem(n,x,'filled','k');
ylabel('Amplitude: x[n]');
xlabel('Amostra: n');
ylim([-1.1 1.1]);

F = dftmtx(N);

X = F*x';
% Calcula a frequência contínua
Omega = 0:2*pi/N:2*pi*(N-1)/N;
f_hz = Omega*fs/(2*pi);

Xabs = abs(X);
Xabs = Xabs(1:N/2+1);
Xabs(2:end) = Xabs(2:end)*2;
f_hz_mod = f_hz(1:N/2+1);

figure
stem(f_hz_mod,Xabs, 'filled','r');
xlabel('Frequência (Hz):');
ylabel('|X(\Omega)|');
ylim([-1 101]);

%% Adicionar ruido

f_ruido = 7.38;
W_ruido = 2*pi*f_ruido/fs;
x_ruido = 0.5*sin(W_ruido*n);

x_mod = x + x_ruido;

x = sin(W*n);
figure
stem(n,x_mod,'filled','k');
ylabel('Amplitude: x[n]');
xlabel('Amostra: n');
ylim([-1.6 1.6]);

F = dftmtx(N);

X_mod = F*x_mod';
% Calcula a frequência contínua
Omega = 0:2*pi/N:2*pi*(N-1)/N;
f_hz = Omega*fs/(2*pi);

Xabs = abs(X_mod);
Xabs = Xabs(1:N/2+1);
Xabs(2:end) = Xabs(2:end)*2;
f_hz_mod = f_hz(1:N/2+1);

figure
stem(f_hz_mod,Xabs, 'filled','r');
xlabel('Frequência (Hz):');
ylabel('|X(\Omega)|');
ylim([-1 101]);

