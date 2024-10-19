function [K] = build_kernel (X, f, f_param)
  # Construiti matricea K (matricea kernel-urilor) asa cum este
  # descrisa in enuntul temei pornind de la datele de intrare X
  # Functia de kernel este descrisa de parametrul f si foloseste f_param
  # ca al 3-lea parametru

  [m, ~] = size(X);
  K = zeros(m, m);

  for i = 1:m
    for j = 1:m
      # Pentru a obtine K(i, j), aplic functia data pentru liniile i si j
      #   ale matricei X, asa cum indica formula din enuntul temei
      K(i, j) = f(X(i, :), X(j, :), f_param);
    endfor
  endfor

endfunction
