% Aceasta functie returneaza un cell-array de k-secvente pentru un cell-array unidimensional.
% De ex.: Pt [a, b, c, a, d], returneaza [abc, bca, cad] daca $k=3$.
function B = k_secv (A, k)
  % fie [a b a b c] si k=2
  % trebuie să întoarcă [ab ba ab bc]
  % HINT: folosiți strjoin 
  n = length(A);
  B = cell(1, n-k);
  for i = 1:(n-k)
    B{i} = strjoin(A(i:i+k-1), ' ');
  end
  B = B';
endfunction
