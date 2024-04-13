function probability = gaussian_distribution(X, mean_value, variance)
	[m n] = size(X);
	probability = zeros(m, 1);

	for i = 1:m
		x = transpose(X(i, :));
		probability(i) = (1 / (2 * pi * det(variance) ^ 0.5)) * exp(-0.5 * transpose(x - mean_value) * inv(variance) * (x - mean_value));
	endfor

endfunction
