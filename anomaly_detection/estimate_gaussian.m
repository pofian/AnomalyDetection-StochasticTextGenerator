% This function estimates the parameters of a Gaussian distribution using the data in X.
function [mean_values variances] = estimate_gaussian(X)
    
    [m n]=size(X);
    mean_values = zeros(1,n);
    variances = zeros(n,n);
    
    # Calculez valoarea medie de pe fiecare coloana
    for i = 1:n
        mean_values(i) = sum(X(:, i)) / m;
    endfor

    # Aplic formula din enutul temei
    for i = 1:m
        dif = X(i, :) - mean_values;
        variances = variances + dif' * dif;
    endfor
    variances=variances./m;

endfunction
