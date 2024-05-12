function signal = low_pass(x, fs, cutoff_freq)
  X = fft(x);
  f = (0:length(x)-1)*(fs/length(x));

  mask = f < cutoff_freq;
  X_filtered = X .* mask';
  x_filtered = ifft(X_filtered);

  signal = x_filtered / max(abs(x_filtered));
end
