%loading data
[spectra,freqs] = spectopo(EEG.data(:,:,:), 0, EEG.srate);
%frequency bands
delta = find(freqs>=1 & freqs<4);
theta = find(freqs>=4 & freqs<8);
alpha = find(freqs>=8 & freqs<12);
beta  = find(freqs>=12 & freqs<32);
gamma = find(freqs>=32);
%powers
pdelta = mean(spectra(delta));
ptheta = mean(spectra(theta));
palpha = mean(spectra(alpha));
pbeta = mean(spectra(beta));
pgamma = mean(spectra(gamma));
