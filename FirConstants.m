N   = 7;          % FIR filter order
Fp  = 2e3;        % 20 kHz passband-edge frequency
Fs  = 97e3;       % 97 kHz sampling frequency nyquist =>49kHz
Rp  = 0.00057565; % Corresponds to 0.01 dB peak-to-peak ripple
Rst = 1e-4;       % Corresponds to 80 dB stopband attenuation
Wn  = 0.1024;     % Corresponds to 5kHz cut off frequency(5e3kHz/49kHz)

eqnum = firceqrip(N,Fp/(Fs/2),[Rp Rst],'passedge'); % eqnum = vec of coeffs
fvtool(eqnum,'Fs',Fs,'Color','White') % Visualize filter

[b,a] = butter(N,Wn)