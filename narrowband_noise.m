% Band-limited gaussian noise
% Mingshuang Li, UT Austin
clear;
time = input('Please input the duration of narrow band noise (seconds): ');
low_cutoff = input('Please input the low cut off frequency (Hz): ');
high_cutoff = input('Please input the high cut off frequency (Hz): ')
Fs = 44100;
samples = Fs*time
gaussian = randn(samples,1);
gaussian = gaussian./(max(abs(gaussian)));
bandnoise = bandpass(gaussian,[low_cutoff high_cutoff],Fs);
figure;
pspectrum(bandnoise,Fs, 'FrequencyLimits',[1 10000]);
ext = [".wav"]
names= append('band_noise',num2str(low_cutoff),'_',num2str(high_cutoff),'Hz',ext)
audiowrite(names,bandnoise,44100)





