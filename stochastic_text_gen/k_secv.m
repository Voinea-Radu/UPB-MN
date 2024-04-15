function B = k_secv (A, k)
    
    n = length(A);
    B = cell(1, n - k);

    for i = 1:(n - k)
        B{i} = strjoin(A(i:i + k - 1), ' ');
    end

    B = B';

endfunction
