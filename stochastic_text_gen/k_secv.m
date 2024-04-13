% Aceasta functie returneaza un cell-array de k-secvente pentru un cell-array unidimensional.
% De ex.: Pt [a, b, c, a, d], returneaza [abc, bca, cad] daca $k=3$.
function B = k_secv (A, k)
  % fie [a b a b c] si k=2
  % trebuie să întoarcă [ab ba ab bc]
  % HINT: folosiți strjoin 
  B = cellfun(@(x) strjoin(x, ''), arrayfun(@(i) A(i:i+k-1), 1:length(A)-k+1, 'UniformOutput', false), 'UniformOutput', false);
endfunction
