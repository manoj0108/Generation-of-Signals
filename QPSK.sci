Generation Of QPSK signal:

clc;clear;
//Generating QPSK signal
fc = input('Enter the frequency');  //2
n = input('Input Message sequence');  //[1 0 0 1 1 1 0 1]

for i=1:length(n)
    if n(i) == 1 then
        pol(1,i) = 1;
    else
        pol(1,i) = -1;
    end
end

// Multiplexing
// NRZ polar line coded signal generation

count = 2:2:length(n);
i = 1;
t = 0:1/512:length(n);
k = 1
for j = 1:length(t)
    if t(j) <= count(k) then
        odd_pulse(1,j) = pol(i);
    else
        odd_pulse(1,j) = pol(i+2);
        i = i+2;
        k = k + 1
    end
end

i = 2;
k = 1;
for j = 1:length(t)
    if t(j) <= count(k) then
        even_pulse(1,j) = pol(i);
    else
        even_pulse(1,j) = pol(i+2);
        i = i+2;
        k = k+1;
    end
end

figure();
subplot(211);
plot(t,odd_pulse,'r');
xtitle('NRZ line coded signal for Odd sequence','Time','Amplitude');
subplot(212);
plot(t,even_pulse);
xtitle('NRZ line coded signal for Even sequence','Time','Amplitude');

//Carrier generation
T=2
c1 = cos(2*%pi*fc*t);
c2 = sin(2*%pi*fc*t);

figure();
subplot(211);
plot(t,c1);
xtitle('Carrier Signal-1','Time','Amplitude');
subplot(212);
plot(t,c2);
xtitle('Carrier Signal-2','Time','Amplitude');

// QPSK generation

QPSK1 = even_pulse.*c1;
QPSK2 = odd_pulse.*c2;
QPSK = QPSK1 - QPSK2;

figure();
subplot(311);
plot(t,QPSK1);
xtitle('PSK signal with Carrier C1','Time','Amplitude');
subplot(312);
plot(t,QPSK2);
xtitle('PSK signal with Carrier C2','Time','Amplitude');
subplot(313);
plot(t,QPSK);
xtitle('QPSK signal','Time','Amplitude');
