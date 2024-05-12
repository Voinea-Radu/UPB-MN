function x = oscillator(freq, fs, dur, A, D, S, R)
  t = 0:1/fs:dur;
  
  sine_wave = sin(2*pi*freq*t);
  
  total_samples = length(t);
  attack_samples = floor(A * fs);
  decay_samples = floor(D * fs);
  release_samples = floor(R * fs);
  sustain_samples = total_samples - attack_samples - decay_samples - release_samples;
  
  attack_env = linspace(0, 1, attack_samples);
  decay_env = linspace(1, S, decay_samples);
  sustain_env = ones(1, sustain_samples) * S;
  release_env = linspace(S, 0, release_samples);
  
  envelope = [attack_env, decay_env, sustain_env, release_env];
  
  x = sine_wave .* envelope;
  x = x';
  x = x(1 : total_samples - 1);
end
