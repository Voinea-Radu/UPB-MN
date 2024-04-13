% Acestă funcție este utilizată pentru estimarea parametrilor folosiți la evaluare.
% Funcția primește că parametri matricea de kernel, valorile evaluate pentru inputurile pe care a fost construit K și parametrul $\lambda$ folosit pentru regularizare și trebuie să întoarcă vectorul coloană $a$ ce conține estimări ai parametrilor folosiți la evaluare (Trebuie să folosiți metoda gradientului conjugat).
function [a] = get_prediction_params (K, y, lambda)
  # TO DO: folosind metode neiterative, implementati logica
  # pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei.
  n = size(K, 1);
  a = zeros(n, 1);
  L = cholesky(K + lambda * eye(n));
  y = L \ y;
  a = get_lower_inverse(L) * y;
endfunction
