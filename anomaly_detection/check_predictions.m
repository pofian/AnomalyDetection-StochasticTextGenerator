function [false_pozitives, false_negatives, true_pozitives] = check_predictions(predictions, truths)

    n = length(predictions);
    v = zeros(1, 4);    # Avem 4 posibilitati

    for i = 1:n
        a = predictions(i);
        b = truths(i);
        v(2 * a + b + 1)++;     % Codific rezultatul prin functia 2*a+b
    endfor

    true_pozitives = v(4);      % x = 1 si y = 1
    false_pozitives = v(3);     % x = 1 si y = 0
    false_negatives = v(2);     % x = 0 si y = 1

endfunction