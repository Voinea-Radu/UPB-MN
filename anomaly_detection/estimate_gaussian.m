% Această funcție va determina media și varianța pentru datasetul dat.
function [mean_values variances] = estimate_gaussian(X)
    mean_values = zeros(2,1);
    variances = zeros(2,2);

    [m n] = size(X);

    for k = 1:m
        x = transpose(X(k,:));
        mean_values += x;
    endfor

    mean_values ./= m;

    for i =1:m
        x = transpose(X(i,:));
        tmp = x - mean_values;
        variances += tmp * transpose(tmp);
    endfor

    variances ./= m;

    tmp_variances = zeros(1,2);

    for i = 1:n
        tmp_variances(i) = variances(i,i);
    endfor

    mean_values = transpose(mean_values);
    variances = tmp_variances;
endfunction
