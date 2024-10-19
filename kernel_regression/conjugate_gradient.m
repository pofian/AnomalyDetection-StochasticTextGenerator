function [x] = conjugate_gradient (A, b, x0, tol, max_iter) 
  # Implementati algoritmul pentru metoda gradientului conjugat
  
  # Codul indicat in enuntul temei
  r = b - A * x0;
  v = r;
  x = x0;
  k = 0;
  tol2 = tol ^ 2;

  while k < max_iter && r' * r > tol2
    t = r' * r / (v' * A * v);
    x += t * v;
    r_nou = r - t * A * v;
    s = r_nou' * r_nou / (r' * r);
    r = r_nou;
    v = r + s * v;
    k++;
  endwhile

endfunction