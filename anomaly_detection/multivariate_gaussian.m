% Computes the probability density function of the multivariate gaussian distribution.
function probabilities = multivariate_gaussian(X, mean_values, variances)
    
    [m n]=size(X);
    probabilities = zeros(1,m);
    inver = inv(variances);

    # Calculez probabilities pentru fiecare coloana
    for i = 1:m
        dif = X(i,:) - mean_values;
        probabilities(i) = exp(-dif * inver * (dif') * 0.5);
    endfor
    
    # Aplic formula din enuntul temei
    probabilities /= (det(variances) ^ 0.5 * (2 * pi) ^ (n * 0.5));
    probabilities = probabilities';
    # Transpun ca sa obtin un vector coloana

endfunction
