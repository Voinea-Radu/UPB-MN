% Acestă funcție este utilizată pentru estimarea parametrilor folosiți la evaluare.
% Funcția primește că parametri matricea de kernel, valorile evaluate pentru inputurile pe care a fost construit K și parametrul $\lambda$ folosit pentru regularizare și trebuie să întoarcă vectorul coloană $a$ ce conține estimări ai parametrilor folosiți la evaluare (Trebuie să folosiți metoda gradientului conjugat).
function [a] = get_prediction_params (K, y, lambda)
  n = size(K, 1);
  a = zeros(n, 1);
  r = y;
  p = r;
  for i = 1:n
    alpha = r' * r / (p' * K * p + lambda);
    a = a + alpha * p;
    r_next = r - alpha * K * p;
    beta = r_next' * r_next / (r' * r);
    p = r_next + beta * p;
    r = r_next;
  end
endfunction
