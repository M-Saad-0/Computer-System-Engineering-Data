%% 
close all;
%% Voices
[maleVoice, fs1] = audioread('Male_voice.wav');
[femaleVoice, fs2] = audioread('Female_voice.wav');
[randomSound, fs3] = audioread('Random_sound.wav');

% Play audio
sound(maleVoice, fs1);
pause(length(maleVoice)/fs1+1);

sound(femaleVoice, fs2);
pause(length(femaleVoice)/fs2+1);

sound(randomSound, fs3);
pause(length(randomSound)/fs3+1);

%% Finding the frequency spectrums
fftMale = fft(maleVoice);
fftFemale = fft(femaleVoice);
fftRandom = fft(randomSound);

f1 = fs1 * (0:(length(maleVoice)-1))/length(maleVoice);
f2 = fs2 * (0:(length(femaleVoice)-1))/length(femaleVoice);
f3 = fs3 * (0:(length(randomSound)-1))/length(randomSound);

SA1 = dsp.SpectrumAnalyzer;
SA2 = dsp.SpectrumAnalyzer;
SA3 = dsp.SpectrumAnalyzer;
SA1.SampleRate = fs1;
SA2.SampleRate = fs2;
SA3.SampleRate = fs3;
SA1.Span = 4000;
SA2.Span = 4000;
SA3.Span = 4000;
SA1.RBW = 100;
SA2.RBW = 100;
SA3.RBW = 100;

step(SA1, maleVoice);
title('Spectrum of Male Voice');
%%
step(SA2, femaleVoice);
title('Spectrum of Female Voice');
%%
step(SA3, randomSound);
title('Spectrum of Random Sound');

plotSignal(abs(fftMale), f1, 'MaleVoice Frequency Domain', 'Frequency (Hz)', 'Amplitude');
plotSignal(abs(fftFemale), f2, 'FemaleVoice Frequency Domain', 'Frequency (Hz)', 'Amplitude');
plotSignal(abs(fftRandom), f3, 'Random Sound Frequency Domain', 'Frequency (Hz)', 'Amplitude');

%% Passing through LPF
lpfFS = 44100;
cutoffFrequency = 8000;
filterOrder = 4;
normalizedCutoff = cutoffFrequency / (lpfFS / 2);

%lpf = fir1(filterOrder, normalizedCutoff, 'low', kaiser(filterOrder+1, 3));
lpf = butter(filterOrder, normalizedCutoff, 'low');

filteredMaleVoice = filter(lpf, 1, maleVoice);
filteredFemaleVoice = filter(lpf, 1, femaleVoice);
filteredRandomSound = filter(lpf, 1, randomSound);

% Play audio after LPF
sound(filteredMaleVoice, lpfFS);
pause(length(filteredMaleVoice)/lpfFS+1);

sound(filteredFemaleVoice, lpfFS);
pause(length(filteredFemaleVoice)/lpfFS+1);

sound(filteredRandomSound, lpfFS);
pause(length(filteredRandomSound)/lpfFS+1);

filtered_fftMale = fft(filteredMaleVoice);
filtered_fftFemale = fft(filteredFemaleVoice);
filtered_fftRandom = fft(filteredRandomSound);

filtered_f1 = lpfFS * (0:(length(filteredMaleVoice)-1))/length(filteredMaleVoice);
filtered_f2 = lpfFS * (0:(length(filteredFemaleVoice)-1))/length(filteredFemaleVoice);
filtered_f3 = lpfFS * (0:(length(filteredRandomSound)-1))/length(filteredRandomSound);

plotSignal(abs(filtered_fftMale), filtered_f1, 'Filtered MaleVoice Frequency Domain', 'Frequency (Hz)', 'Amplitude');
plotSignal(abs(filtered_fftFemale), filtered_f2, 'Filtered femaleVoice Frequency Domain', 'Frequency (Hz)', 'Amplitude');
plotSignal(abs(filtered_fftRandom), filtered_f3, 'Filtered RandomSound Frequency Domain', 'Frequency (Hz)', 'Amplitude');

%%  Modulation Section
% Define carrier frequencies (fraction of sampling rate)
carrierFrequecyMale = fs1/4;
carrierFrequecyFemale = fs2/5;
carrierFrequecyRandom = fs3/6;

amMaleVoice = ammod(filteredMaleVoice, carrierFrequecyMale, lpfFS);
amFemaleVoice = ammod(filteredFemaleVoice, carrierFrequecyFemale, lpfFS);
amRandomSound = ammod(filteredRandomSound, carrierFrequecyRandom, lpfFS);

fftAmMaleVoice = fft(amMaleVoice);
fftAmFemaleVoice = fft(amFemaleVoice);
fftAmRandomSound = fft(amRandomSound);

am_f1 = lpfFS * (0:(length(amMaleVoice)-1))/length(amMaleVoice);
am_f2 = lpfFS * (0:(length(amFemaleVoice)-1))/length(amFemaleVoice);
am_f3 = lpfFS * (0:(length(amRandomSound)-1))/length(amRandomSound);

plotSignal(abs(fftAmMaleVoice), am_f1, 'Amplitude Modulated MaleVoice Frequency Domain', 'Frequency (Hz)', 'Amplitude');
plotSignal(abs(fftAmFemaleVoice), am_f2, 'Amplitude Modulated femaleVoice Frequency Domain', 'Frequency (Hz)', 'Amplitude');
plotSignal(abs(fftAmRandomSound), am_f3, 'Amplitude Modulated RandomSound Frequency Domain', 'Frequency (Hz)', 'Amplitude');

%% Mutiplexing
len = length(amMaleVoice)+length(amFemaleVoice)+length(amRandomSound);

tdmSignal = zeros(1,len);

for i=1:length(amMaleVoice)
    tdmSignal(i) = amMaleVoice(i);
end
for i=1:length(amFemaleVoice)
    tdmSignal(i+length(maleVoice)) = amFemaleVoice(i);
end
for i=1:length(amRandomSound)
    tdmSignal(i+length(maleVoice)+length(femaleVoice)) = amRandomSound(i);
end    
    
tdmfft = fft(tdmSignal);
tdm_fs = lpfFS * (0:(length(tdmSignal)-1))/length(tdmSignal);


plotSignal(abs(tdmfft), tdm_fs, 'Time Division Multiplexing Frequency Domain', 'Frequency (Hz)', 'Amplitude');

%% Adding noise to the signal
noiseLevel = 0.005; 
noise = noiseLevel * randn(size(tdmSignal));
tdmSignalWithNoise = tdmSignal + noise;

fftSignalWithNoise = fft(tdmSignalWithNoise);
tdmN_fs = lpfFS * (0:(length(tdmSignalWithNoise)-1))/length(tdmSignalWithNoise);

plotSignal(abs(fftSignalWithNoise), tdmN_fs, 'Time Division Multiplexing With Noise Frequency Domain', 'Frequency (Hz)', 'Amplitude');

%% Demodulation
for i=1:length(amMaleVoice)
    demuxMaleVoice(i) = tdmSignalWithNoise(i);
end
for i=1:length(amFemaleVoice)
    demuxFemaleVoice(i) = tdmSignalWithNoise(i+length(maleVoice));
end
for i=1:length(amRandomSound)
    demuxRandomSound(i) = tdmSignalWithNoise(i+length(maleVoice)+length(femaleVoice));
end 

deModMaleVoice = amdemod(demuxMaleVoice, carrierFrequecyMale, lpfFS);
deModFemaleVoice = amdemod(demuxFemaleVoice, carrierFrequecyFemale, lpfFS);
deModRandomSound = amdemod(demuxRandomSound, carrierFrequecyRandom, lpfFS);

fftDemodMale = fft(demuxMaleVoice);
demodMfs = lpfFS * (0:(length(demuxMaleVoice)-1))/length(demuxMaleVoice);
fftDemodFemale = fft(demuxFemaleVoice);
demodFfs = lpfFS * (0:(length(demuxFemaleVoice)-1))/length(demuxFemaleVoice);
fftDemodRandom = fft(demuxRandomSound);
demodRfs = lpfFS * (0:(length(demuxRandomSound)-1))/length(demuxRandomSound);

plotSignal(abs(fftDemodMale), demodMfs, 'Demodulated MaleVoice With Noise Frequency Domain', 'Frequency (Hz)', 'Amplitude');
plotSignal(abs(fftDemodFemale), demodFfs, 'Demodulated FemaleVoice With Noise Frequency Domain', 'Frequency (Hz)', 'Amplitude');
plotSignal(abs(fftDemodRandom), demodRfs, 'Demodulated RandomSound With Noise Frequency Domain', 'Frequency (Hz)', 'Amplitude');

%% Filtering Demodulated signal
low_cutoff_frequency = 5;   % Low cutoff frequency in Hz
high_cutoff_frequency = 20;  % High cutoff frequency in Hz
order = 4;  

normalized_low_cutoff = low_cutoff_frequency / (0.5 * 1000);
normalized_high_cutoff = high_cutoff_frequency / (0.5 * 1000);

[bpf, a] = butter(order, [normalized_low_cutoff, normalized_high_cutoff], 'bandpass');

filteredMaleVoice = smooth(deModMaleVoice); %
filteredMaleVoice = filter(bpf, a, filteredMaleVoice);
filteredFemaleVoice = smooth(deModFemaleVoice); %
filteredFemaleVoice = filter(bpf, a, filteredFemaleVoice);
filteredRandomSound = smooth(deModRandomSound); %
filteredRandomSound = filter(bpf, a, filteredRandomSound);

% Play audio after LPF
sound(filteredMaleVoice, lpfFS);
pause(length(filteredMaleVoice)/lpfFS+1);

sound(filteredFemaleVoice, lpfFS);
pause(length(filteredFemaleVoice)/lpfFS+1);

sound(filteredRandomSound, lpfFS);
pause(length(filteredRandomSound)/lpfFS+1);

filtered_fftMale = fft(filteredMaleVoice);
filtered_fftFemale = fft(filteredFemaleVoice);
filtered_fftRandom = fft(filteredRandomSound);

filtered_f1 = lpfFS * (0:(length(filteredMaleVoice)-1))/length(filteredMaleVoice);
filtered_f2 = lpfFS * (0:(length(filteredFemaleVoice)-1))/length(filteredFemaleVoice);
filtered_f3 = lpfFS * (0:(length(filteredRandomSound)-1))/length(filteredRandomSound);

plotSignal(abs(filtered_fftMale), filtered_f1, 'Filtered And Demodulated MaleVoice Frequency Domain', 'Frequency (Hz)', 'Amplitude');
plotSignal(abs(filtered_fftFemale), filtered_f2, 'Filtered And Demodulated femaleVoice Frequency Domain', 'Frequency (Hz)', 'Amplitude');
plotSignal(abs(filtered_fftRandom), filtered_f3, 'Filtered And Demodulated RandomSound Frequency Domain', 'Frequency (Hz)', 'Amplitude');
