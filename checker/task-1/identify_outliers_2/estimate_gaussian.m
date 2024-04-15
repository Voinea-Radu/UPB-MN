function [mean_values variances] = estimate_gaussian(X)

	mean_values = zeros(2, 1);
	variances = zeros(2, 2);

	[m n] = size(X);

	for k = 1:m
		x = transpose(X(k, :));
		mean_values += x;
	endfor

	mean_values ./= m;

	for i = 1:m
		x = transpose(X(i, :));
		tmp = x - mean_values;
		variances += tmp * transpose(tmp);
	endfor

	variances ./= m;

	mean_values = mean_values';
	
endfunction
