function [precision recall F1] = metrics(true_pozitives, false_pozitives, false_negatives)
    
    # Formulele gasite pe https://en.wikipedia.org/wiki/Precision_and_recall
    precision = true_pozitives / (true_pozitives + false_pozitives);
    recall = true_pozitives / (true_pozitives + false_negatives);
    F1 = 2 * precision * recall / (precision + recall);

endfunction