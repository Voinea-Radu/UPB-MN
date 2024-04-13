% Aceasta functie este utilizata pentru implementarea funcției pentru kernelul polinomial.
function retval = polynomial_kernel (x, y, d)
  # TO DO: implementare kernel polinomial.
  retval = (x * y' + 1) ^ d;
endfunction
