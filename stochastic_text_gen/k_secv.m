function B = k_secv (A, k)
  % given an array [a b a b c] and k=2
  % should return [ab ba ab bc]
  % HINT: use strjoin

  n = length(A) - k;
  for i = 1:n
    # Concatenez cate k caractere
    B{i,1} = strjoin(A(i:i+k-1), ' ');
  endfor

endfunction
