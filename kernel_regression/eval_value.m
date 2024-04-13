function pred = eval_value(x, X, f, f_param, a)
    n = size(X, 1);
    pred = 0;

    for i = 1:n
        pred = pred + a(i) * f(X(i, :), x, f_param);
    endfor

endfunction
