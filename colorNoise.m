% Mingshuang Li, UT Austin, 2020.06.07
% a for colored noise: pink =1, white = 0, brown = -1, purple = -2 
clear

fs = input('Please input the sampling frequency (Hz): ')
a = input('Please input the a (e.g., pink =1, white = 0, brown = 2, blue = -1, purple = -2): '); 
duration = input('Please input the duration (second): ');
cNoise = dsp.ColoredNoise(a,fs*duration);
rng default;
x = cNoise();
x = x./(max(abs(x)));
figure;
pspectrum(x,fs, 'FrequencyLimits',[1 10000]);
names= input('Please type name of new audiofile: ', 's');
audiowrite(names,x,fs)
