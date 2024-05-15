function [S, f, t] = spectrogram(signal, fs, window_size)
	signal_length = length(signal);
	windows_count = floor(signal_length / window_size);
	
	for i = 1:windows_count
		start_index = (i - 1) * window_size + 1;
		end_index = i * window_size;
		window = signal(start_index : end_index);

		window = window .* hanning(window_size);

		fft_window = fft(window, 2 * window_size);
		fft_window = fft_window(1 : window_size);

		S(:, i) = abs(fft_window);
	end

	f = (0 : window_size - 1)' * fs / window_size / 2;
	t = (0 : windows_count - 1) * window_size / fs;
	t = t';
end