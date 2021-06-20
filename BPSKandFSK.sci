Generation Of BPSK and BFSK signal:

// NRZ polar line coding technique
// Generating BPSK and BFSK signals
clc; clear;
fc = input('Enter the carrier frequency'); //2
n = input('Input Message sequence'); //[1 0 0 1 1 1 0 1]

for i=1:length(n)
    if n(i) == 1 then
        seq(i) = 1;
    else
        seq(i) = -1;
    end
end

//Pulse shaping

k = 1;
t = 0:1/512:length(n);
m = []
for j = 1:length(t)
    if t(j) <= k then
        m(1,j) =  seq(k);
    else
        m(1,j) = seq(k+1);
        k = k+1;
    end
end
figure();
subplot(311);
plot(t,m);
xtitle('NRZ Polar signal','Time','Amp');

cw = sin(2*%pi*fc*t);
subplot(312);
plot(t,cw);
xtitle('Carrier Signal','Time','Amp');

//BPSK signal generation
xPSK = m.*cw;
subplot(313);
plot(t,xPSK);
xtitle('BPSK signal','Time','Amp');

//BFSK signal generation
c1 = sin(2*%pi*fc*t);
c2 = sin(2*%pi*2*fc*t);

for i = 1:length(t)
    if m(1,i) == 1 then
        xFSK(i) = c2(i);
    else
        xFSK(i) = c1(i);
    end
end

figure();
subplot(411);
plot(t,m);
xtitle('NRZ Polar signal','Time','Amp');

subplot(412);
plot(t,c1);
xtitle('Carrier Signal-1','Time','Amp');

subplot(413);
plot(t,c2);
xtitle('Carrier Signal-2','Time','Amp');

subplot(414);
plot(t,xFSK)
xtitle('BFSK signal','Time','Amp');
