function y_interp = P_spline(coef, x, x_interp)
    n = length(x_interp); % number of intervals
    y_interp = zeros(size(x_interp)); % initialize output vector

    for i = 1:n
		x_current = x_interp(i);

		index = binary_search(x, x_current)
		display(index);

        % evaluate the spline polynomial on the current interval
		term = (x_current - x(index));

		index = index - 1;

        y_interp(i) = coef(4 * index + 1) + coef(4 * index + 2) * term + coef(4 * index + 3) * term.^2 + coef(4 * index + 4) * term.^3;
    end
end
