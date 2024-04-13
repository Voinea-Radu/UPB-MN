function [a] = get_prediction_params_iterative(K, y, lambda)
  % Add a small lambda to the diagonal elements of the K matrix for regularization
  K_reg = K + lambda * eye(size(K));

  % Perform Cholesky decomposition
  L = cholesky(K_reg);

  % Solve for intermediate variable using forward substitution
  v = L \ y;

  % Solve for the parameter vector a using backward substitution
  a = L.' \ v;
end
