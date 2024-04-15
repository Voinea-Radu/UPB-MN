function [X_train, y_train, X_pred, y_pred] = split_dataset (X, y, percentage)
	
	n = size(X, 1);
	n_train = floor(percentage * n);

	X_train = X(1:n_train, :);
	y_train = y(1:n_train);

	X_pred = X(n_train + 1:end, :);
	y_pred = y(n_train + 1:end);

endfunction
