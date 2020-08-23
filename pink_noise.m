%Mingshuang Li, UT Austin
fs = input('Please input the sampling frequency (Hz): ')
duration = input('Please input the duration of pink noise (s): ');
y = pinknoise(duration*fs);
figure;
pspectrum(y,fs,'FrequencyLimits',[1 10000]);
names= input('Please type name of new audiofile: ', 's');
audiowrite(names,y,fs)

