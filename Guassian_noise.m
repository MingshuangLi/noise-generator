clear

fs = input('Please input the sampling frequency (Hz): ')
duration = input('Please input the duration (second): ');

gaussian = randn(fs*duration,1);
gaussian = gaussian./(max(abs(gaussian)));
pspectrum(gaussian,fs, 'FrequencyLimits',[1 10000])
audiowrite('gaussian.wav',gaussian,44100)