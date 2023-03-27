%% Trabalho realizado por João Vitor Garcia Carvalho 2270340
% limpeza geral
close all
clc
clear all

%% Questão 1

%onda senoidal tempo contínuo
t = 0:0.001:pi;
f = 1; %Hz
w = 2*pi*f;
Xc = sin(w*t);

%% Tempo de amostra A
%onda senoidal amostrada TsA
TsA = 0.1;
tA = 0:TsA:pi;

XcA = sin(w*tA);

%plot do sinal original e a amostrada
figure
subplot(2,1,1);
plot(t,Xc, 'b');
hold all
stem(tA, XcA,'filled');

%achar Alias
fs = 1/TsA; %Hz
XcAAlias = sin(2*pi*(f+fs)*t);
XcAAliasAmost = sin(2*pi*(f+fs)*tA);
title('Sinal original contínuo e amostrado');
legend('Sinal contínuo', 'Sinal amostrado');

%plot sinal alias e a amostrada
subplot(2,1,2);
plot(t, XcAAlias, 'b');
hold all
stem(tA, XcAAliasAmost,'filled');
title('Sinal Alias contínuo e amostrado');
legend('Sinal contínuo', 'Sinal amostrado');

%% Tempo de amostra B
%onda senoidal amostrada TsA
TsB = 0.2;
tA = 0:TsB:pi;

XcA = sin(w*tA);

%plot do sinal original e a amostrada
figure
subplot(2,1,1);
plot(t,Xc, 'k');
hold all
stem(tA, XcA,'filled');

%achar Alias
fs = 1/TsB; %Hz
XcAAlias = sin(2*pi*(f+fs)*t);
XcAAliasAmost = sin(2*pi*(f+fs)*tA);
title('Sinal original contínuo e amostrado');
legend('Sinal contínuo', 'Sinal amostrado');

%plot sinal alias e a amostrada
subplot(2,1,2);
plot(t, XcAAlias, 'k');
hold all
stem(tA, XcAAliasAmost,'filled');
title('Sinal Alias contínuo e amostrado');
legend('Sinal contínuo', 'Sinal amostrado');

%% Tempo de amostragem C
%onda senoidal amostrada TsA
TsC = 0.3;
tA = 0:TsC:pi;

XcA = sin(w*tA);

%plot do sinal original e a amostrada
figure
subplot(2,1,1);
plot(t,Xc, 'b');
hold all
stem(tA, XcA,'filled');

%achar Alias
fs = 1/TsC; %Hz
XcAAlias = sin(2*pi*(f+fs)*t);
XcAAliasAmost = sin(2*pi*(f+fs)*tA);
title('Sinal original contínuo e amostrado');
legend('Sinal contínuo', 'Sinal amostrado');

%plot sinal alias e a amostrada
subplot(2,1,2);
plot(t, XcAAlias, 'b');
hold all
stem(tA, XcAAliasAmost,'filled');
title('Sinal Alias contínuo e amostrado');
legend('Sinal contínuo', 'Sinal amostrado');

%% Tempo de amostragem D

%onda senoidal amostrada TsA
TsD = 0.4;
tA = 0:TsD:pi;

XcA = sin(w*tA);

%plot do sinal original e a amostrada
figure
subplot(2,1,1);
plot(t,Xc, 'k');
hold all
stem(tA, XcA,'filled');

%achar Alias
fs = 1/TsD; %Hz
XcAAlias = sin(2*pi*(f+fs)*t);
XcAAliasAmost = sin(2*pi*(f+fs)*tA);
title('Sinal original contínuo e amostrado');
legend('Sinal contínuo', 'Sinal amostrado');

%plot sinal alias e a amostrada
subplot(2,1,2);
plot(t, XcAAlias, 'k');
hold all
stem(tA, XcAAliasAmost,'filled');
title('Sinal Alias contínuo e amostrado');
legend('Sinal contínuo', 'Sinal amostrado');

%% Tempo de amostragem E

%onda senoidal amostrada TsA
TsE = 0.5;
tA = 0:TsE:pi;

XcA = sin(w*tA);

%plot do sinal original e a amostrada
figure
subplot(2,1,1);
plot(t,Xc, 'b');
hold all
stem(tA, XcA,'filled');

%achar Alias
fs = 1/TsE; %Hz
XcAAlias = sin(2*pi*(f+fs)*t);
XcAAliasAmost = sin(2*pi*(f+fs)*tA);
title('Sinal original contínuo e amostrado');
legend('Sinal contínuo', 'Sinal amostrado');

%plot sinal alias e a amostrada
subplot(2,1,2);
plot(t, XcAAlias, 'b');
hold all
stem(tA, XcAAliasAmost,'filled');
title('Sinal Alias contínuo e amostrado');
legend('Sinal contínuo', 'Sinal amostrado');




