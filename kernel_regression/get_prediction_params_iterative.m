function [a] = get_prediction_params_iterative (K, y, lambda)
  # TO DO: folosind metode iterative, implementati logica
  # pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei.
  n = size(K, 1);
  a = zeros(n, 1);
  L = cholesky(K + lambda * eye(n));
  y = L \ y;
  a = get_lower_inverse(L) * y;
endfunction
