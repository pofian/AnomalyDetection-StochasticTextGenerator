function retval = gaussian_kernel (x, y, sigma)
  # TO DO: implement gaussian kernel function
  
  # Aplic formula data in enuntul temei
  retval = exp(-(norm(x - y) ^ 2) / (sigma ^ 2 * 2));

endfunction