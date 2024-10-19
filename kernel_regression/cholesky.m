function [L] = cholesky (A)
    # TO DO: realizati descompunerea cholesky pentru o matrice
    # positiv definita

    [n, ~] = size(A);
    L = zeros(n, n);

    # Am aplicat formulele deduse prin identificare directa

    # Pentru fiecare coloana k:
    for k = 1:n
        # Calculez elementele de sub diagonala
        for i = 1:k-1
            L(k, i) = (A(k, i) - L(k, 1:i-1) * L(i,1:i-1)') / L(i,i);
        endfor
        # Calculez elementul de pe diagonala
        L(k, k) = sqrt(A(k, k) - L(k,1:k-1) * L(k, 1:k-1)');
    endfor

endfunction