% Finds the best threshold to use for selecting outliers.
function [best_epsilon best_F1 associated_precision associated_recall] = optimal_threshold(truths, probabilities)
    
    # Initializez cu 0 datele cerute
    best_epsilon = 0;
    best_F1 = 0;
    associated_precision = 0;
    associated_recall = 0;
    
    nr_pasi = 1000; # Numarul de pasi, pe care l-am ales conform indicatiei din changelog.txt
    primul = min(probabilities);
    ultimul = max(probabilities);
    delta = (ultimul-primul) / nr_pasi; # Distanta intre doua epsilonuri consecutive, obtinuta
                                        # prin divizarea intervalului in nr_pasi subintervale egale
    
    for epsilon = primul:delta:ultimul
        # Evaluez predictia
        predictions = probabilities <= epsilon;
        
        # Apelez functiile construite
        [false_pozitives, false_negatives, true_pozitives] = check_predictions(predictions, truths);
        [precision recall F1] = metrics(true_pozitives, false_pozitives, false_negatives);
        
        # Daca am gasit date mai bune, le actualizez
        if F1 > best_F1
            best_epsilon = epsilon;
            best_F1 = F1;
            associated_precision = precision;
            associated_recall = recall;
        endif
    endfor

endfunction
