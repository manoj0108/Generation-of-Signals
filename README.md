# Generation-of-Signals

Methodology:-

Frequency Shift Keying (FSK) is the digital modulation technique in which the frequency of the carrier signal varies according to the discrete digital changes. FSK is a scheme of frequency modulation.

![1 1](https://user-images.githubusercontent.com/69961625/122687306-5cfa3a80-d233-11eb-9eb4-0a8508bd2873.png)

Binary Phase Shift Keying (BPSK):-This is also called as 2-phase PSK (or) Phase Reversal Keying. In this technique, the sine wave carrier takes two phase reversals such as 0° and 180°.BPSK is basically a DSB-SC (Double Sideband Suppressed Carrier) modulation scheme, for message being the digital information.

![1 2](https://user-images.githubusercontent.com/69961625/122687326-713e3780-d233-11eb-948a-6acb69b3d5d6.png)

Quadrature Phase Shift Keying (QPSK):-This is the phase shift keying technique, in which the sine wave carrier takes four phase reversals such as 0°, 90°, 180°, and 270°.QPSK is a variation of BPSK, and it is also a DSB-SC (Double Sideband Suppressed Carrier) modulation scheme, which send two bits of digital information at a time, called as digits. Instead of the conversion of digital bits into a series of digital stream, it converts them into bit-pairs. This decreases the data bit rate to half, which allows space for the other users.

![2](https://user-images.githubusercontent.com/69961625/122687352-98950480-d233-11eb-8919-c32db4f8ccca.jpg)


Inference:
Through BPSK plots we can observe that for a given binary data,there exists two phases (i.e.0 radians and π radians).Each phase is associated with one of the two symbols.(say 0 radians for 1 and π radians for 0).These variations in phase can be seen for the given binary data.
Through BFSK plots,since there are two symbols so there exists two frequencies corresponding to each symbol (say f1 f0) .This continous change in frequency for a particular symbol can be view and analysed through plots.
QPSK involves in four symbols, so there exists four phases (0,π/2,π,3π/2) radians.Each phase- shift is associated with each symbol(S0,S1,S2,S3).This phase shifts can be analysed by the plots.
