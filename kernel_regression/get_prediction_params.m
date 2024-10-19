function [a] = get_prediction_params (K, y, lambda)
  # TO DO: folosind metode neiterative, implementati logica
  # pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei

  [m, ~] = size(K);

  # Trebuie sa calculez inversa matricei lambda * I_n + K
  B = lambda * eye(m) + K;
  
  # Din moment ce suma a doua matrici spd. este tot spd.,
  #   iar K si Im sunt spd., si matricea B este spd.
  # Atunci, exista L lower astfel incat B = L * L_transpus
  L = cholesky(B);
  L_inv = get_lower_inverse(L);
  # Inversa lui B va fi (L^-1)_transpus * L_transpus

  # Aplic formula data in enuntul temei
  a = lambda * (L_inv' * L_inv) * y;

endfunction
