function y_interp = P_vandermonde (coef, x_interp)
    y_interp = zeros(size(x_interp));

    for i = 1:length(coef)
        y_interp = y_interp + coef(i) * x_interp.^(i-1);
    end
end
