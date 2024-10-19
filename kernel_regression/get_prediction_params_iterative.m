function [a] = get_prediction_params_iterative (K, y, lambda)
  # TO DO: folosind metode iterative, implementati logica
  # pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei

  [m, ~] = size(K);

  # Presupun ca aproximarea initiala este (0, 0, ... , 0)
  x0 = zeros(m, 1);

  # Calculez a conform formulei indicate in enuntul temei,
  #   folosind functia creata conjugate_gradient
  a = conjugate_gradient(lambda * eye(m) + K, y, x0, 0.001, 1000);
  # Am ales tol = 0.001 pentru ca este cea mai mare
  #   putere a lui 1/10 pentru care trec testele

endfunction
