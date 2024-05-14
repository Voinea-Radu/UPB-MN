function coef = spline_c2 (x, y)
    n = length(x) - 1;
    A = zeros(n *4, n * 4);
	b = zeros(n * 4, 1);

	for i = 1:n+1
		b(i) = y(i);
	end

    % TODO 1: si(xi) = yi, i = 0 : n - 1
	for i = 1:n
		A(i, 4 * (i - 1) + 1) = 1;
	end

    % TODO 2: s_n-1(xn) = yn
	A(n + 1, 4 * (n - 1) + 1) = 1;
	for i = 1:3
		A(n + 1, 4 * (n - 1) + 1 + i) = (x(n + 1) - x(n)) ^ i;

    % TODO 3: si(x_i+1) = s_i+1(x_i+1), i = 0 : n - 1
	for i = 1:n - 1
		A(n + 1 + i, 4 * (i - 1) + 1) = 1;
		for j = 1:3
			A(n + 1 + i, 4 * (i - 1) + 1 + j) = (x(i + 1) - x(i)) ^ j;
		end
		A(n + 1 + i, 4 * i + 1) = -1;
	end


    % TODO 4: si'(x_i+1) = s_i+1'(x_i+1), i = 0 : n - 1
	for i = 1:n - 1
		A(n + 1 + n - 1 + i, 4 * (i - 1) + 2) = 1;
		for j = 1:2
			A(n + 1 + n - 1 + i, 4 * (i - 1) + 2 + j) = (j+1) * (x(i + 1) - x(i)) ^ j;
		end
		A(n + 1 + n - 1 + i, 4 * i + 2) = -1;
	end
	

    % TODO 5: si''(x_i+1) = s_i+1''(x_i+1), i = 0 : n - 1
	for i = 1:n - 1
		A(n + 1 + n - 1 + n - 1 + i, 4 * (i - 1) + 3) = 2;
		A(n + 1 + n - 1 + n - 1 + i, 4 * (i - 1) + 4) = 6 * (x(i + 1) - x(i));
		A(n + 1 + n - 1 + n - 1 + i, 4 * i + 3) = -2;
	end

    % TODO 6: s0''(x0) = 0
	A(n + 1 + n - 1 + n - 1 + n, 3) = 2;


    % TODO 7: s_n-1''(x_n) = 0
	A(n + 1 + n - 1 + n - 1 + n + 1, 4 * (n - 1) + 3) = 2;
	A(n + 1 + n - 1 + n - 1 + n + 1, 4 * (n - 1) + 4) = 6 * (x(n + 1) - x(n));

    % Solve the system of equations
    coef = inv(A) * b;
end
