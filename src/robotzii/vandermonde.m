function coef = vandermonde(x, y)
    A = zeros(length(x), length(x));
    b = zeros(length(x), 1);

    for i = 1:length(x)
        A(i, 1) = 1;
        for j = 2:length(x)
            A(i, j) = x(i) ^ (j - 1);
        end
        b(i) = y(i);
    end

    coef = A \ b;
endfunction
