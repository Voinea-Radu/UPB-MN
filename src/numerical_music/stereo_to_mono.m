function mono = stereo_to_mono(stereo)
	mono = stereo;

	[n, m] = size(mono);
	mono = eye(n, 1);

	display(n);
	display(m);

	for i = 1:n
		for j = 1:m
			mono(i) = mono(i) + stereo(i, j);
		end
		mono(i) = mono(i) / m;
	end

	% Normalize
	mono = mono / max(abs(mono));
	
endfunction

