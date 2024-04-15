function [x] = conjugate_gradient (A, b, x0, tol, max_iter)
    
    n = length(b);
    x = x0;
    r = b - A * x;
    p = r;
    iter = 0;

    while norm(r) > tol && iter < max_iter
        Ap = A * p;
        alpha = (r' * r) / (p' * Ap);
        x = x + alpha * p;
        r_new = r - alpha * Ap;
        beta = (r_new' * r_new) / (r' * r);
        p = r_new + beta * p;
        r = r_new;
        iter = iter + 1;
    end

endfunction
