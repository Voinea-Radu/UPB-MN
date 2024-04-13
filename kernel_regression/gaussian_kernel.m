% Aceasta functie este utilizata pentru implementarea funcției pentru kernelul gausian.
function retval = gaussian_kernel (x, y, sigma)
  # TO DO: implementare kernel gausian.
  retval = exp(-norm(x - y) ^ 2 / (2 * sigma ^ 2));
endfunction
