function probabilities = multivariate_gaussian(X, mean_values, variances)

	[m n] = size(X);

	probabilities = zeros(m, 1);

	for i = 1:m
		x = X(i, :);

		term1 = 1 / ((2 * pi) ^ (n / 2) * sqrt(det(variances)))
		term2 = exp(-0.5 * (x - mean_values) * inv(variances) * (x - mean_values)');

		probabilities(i) = term1 * term2;
	endfor

	probabilities = probabilities(:);

endfunction
