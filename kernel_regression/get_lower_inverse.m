function [P] = get_lower_inverse(L)
    n = size(L, 1);
    P = eye(n);

    for j = 1:n

        for i = j + 1:n
            factor = L(i, j) / L(j, j);
            L(i, :) = L(i, :) - factor * L(j, :);
            P(i, :) = P(i, :) - factor * P(j, :);
        end

    end

    for i = 1:n
        P(i, :) = P(i, :) / L(i, i);
    end

endfunction
