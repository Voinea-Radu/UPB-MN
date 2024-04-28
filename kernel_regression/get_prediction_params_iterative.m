function [a] = get_prediction_params_iterative(K, y, lambda)
	
	K_reg = K + lambda * eye(size(K));

	n = size(K_reg, 1);
    L = zeros(n, n);

    for i = 1:n
        for j = 1:i

            if i == j
                L(i, j) = sqrt(K_reg(i, j) - sum(L(i, 1:j - 1) .^ 2));
            else
                L(i, j) = (K_reg(i, j) - sum(L(i, 1:j - 1) .* L(j, 1:j - 1))) / L(j, j);
            endif

        endfor
    endfor

	v = L \ y;
	a = L.' \ v;
	
end
