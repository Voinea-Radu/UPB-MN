% Computes the probability density function of the multivariate gaussian distribution.
function probabilities = multivariate_gaussian(X, mean_values, variances)
    n = size(X, 2);
    m = size(X, 1);
    probabilities = zeros(m, 1);

    for i = 1:m
        x = X(i, :);

        term1 = 1 / ((2 * pi) ^ (n / 2) * sqrt(det(variances)))
        exp_term = exp(-0.5 * (x - mean_values) * inv(variances) * (x - mean_values)');

        probabilities(i) =  term1 * exp_term;
    endfor

    probabilities = probabilities(:);

endfunction
