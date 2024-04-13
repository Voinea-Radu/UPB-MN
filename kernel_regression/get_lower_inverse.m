% Aceasta functie inverseaza o matrice inferior triunghiulara (lower) folosind un algoritm de eliminare gaussiana.
function [P] = get_lower_inverse (L)
  # TO DO: Determinati printr-o metoda matriceala neiterativa inversa
  # unei matrici de tipul lower.
  n = size(L, 1);
  P = eye(n);
  for i = 1:n
    for j = i+1:n
      P(j, i) = -L(j, i:n) * P(i:n, i);
    end
  end
endfunction
