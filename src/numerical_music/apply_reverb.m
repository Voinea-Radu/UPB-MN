function output_signal = apply_reverb(signal, impulse_response)
	if size(impulse_response, 2) != 1
		impulse_response = mean(impulse_response, 2);
	end

	convolved_signal = fftconv(signal, impulse_response);

	output_signal = convolved_signal / max(abs(convolved_signal));
end
	