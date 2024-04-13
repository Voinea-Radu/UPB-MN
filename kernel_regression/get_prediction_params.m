% Acestă funcție este utilizată pentru estimarea parametrilor folosiți la evaluare.
% Funcția primește că parametri matricea de kernel, valorile evaluate pentru inputurile pe care a fost construit K și parametrul $\lambda$ folosit pentru regularizare și trebuie să întoarcă vectorul coloană $a$ ce conține estimări ai parametrilor folosiți la evaluare (Trebuie să folosiți metoda gradientului conjugat).
function [a] = get_prediction_params(K, y, lambda)
  % Add a small lambda to the diagonal elements of the K matrix for regularization
  K_reg = K + lambda * eye(size(K));

  % Perform Cholesky decomposition
  L = cholesky(K_reg);

  % Solve for intermediate variable using forward substitution
  v = L \ y;

  % Solve for the parameter vector a using backward substitution
  a = L.' \ v;
end
