function [a] = get_prediction_params_iterative(K, y, lambda)
	
	K_reg = K + lambda * eye(size(K));

	L = cholesky(K_reg);

	v = L \ y;
	a = L.' \ v;

end
