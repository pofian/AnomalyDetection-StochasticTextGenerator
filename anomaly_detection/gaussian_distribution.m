function probability = gaussian_distribution(X, mean_value, variance)
    
    [m n] = size(X);
    probability = zeros(1,m);
    inver = inv(variance);

    # Calculez probability pentru fiecare coloana
    for i = 1:m
        dif = X(i, :) - mean_value;
        probability(i) = exp(-dif * inver * (dif') * 0.5);
    endfor
    
    # Aplic formula din enuntul temei
    probability /= (det(variance) ^ 0.5 * (2 * pi) ^ (n * 0.5));
    probability = probability';
    # Transpun ca sa obtin un vector coloana

endfunction