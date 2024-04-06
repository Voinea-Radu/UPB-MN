% Această funcție va determina media și varianța pentru datasetul dat.
function [mean_values variances] = estimate_gaussian(X)
    mean_values = zeros(1,2);
    variances = zeros(1,2);

    n = size(X, 2);
    m = size(X, 1);

    for i = 1:n
        for k = 1:m
            x = X(k, i);
            mean_values(1,i) += x;
        endfor
    endfor

    mean_values = mean_values / m;

    for i = 1:m
        tmp_1 = X(i, :) - mean_values;
        tmp_2 = transpose(tmp_1);
        variances += tmp_2 * tmp_1;
    endfor

    variances = variances / m;
    
    tmp_variances = zeros(1,2);
    for i = 1:n
        tmp_variances(1,i) = variances(i,i);
    endfor
    
    variances = tmp_variances;

endfunction
