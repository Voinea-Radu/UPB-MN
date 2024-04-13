% Aceasta functie implementeaza metoda Cholesky pentru descompunerea LU a unei matrici pozitiv semi-definite.
function [L] = cholesky (A)
    # TO DO: realizati descompunerea cholesky pentru o matrice
    # positiv definita.

    n = size(A, 1);
    L = zeros(n, n);

    for i = 1:n
        for j = 1:i
            if i == j
                L(i, j) = sqrt(A(i, j) - sum(L(i, 1:j-1) .^ 2));
            else
                L(i, j) = (A(i, j) - sum(L(i, 1:j-1) .* L(j, 1:j-1))) / L(j, j);
            endif
        endfor
    endfor

endfunction
