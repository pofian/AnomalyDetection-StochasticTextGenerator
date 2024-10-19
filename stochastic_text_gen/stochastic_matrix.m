function retval = stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)
    % build the stochastic matrix. Bonus if it is sparse
    % The 'stochastic' matrix SHOULD NOT be scaled (divided by sum of all)
    % It should just be entry-wise
    % This is how the checker tests it, to not have to deal with floating point errors

    # Apelez functiile create
    k_secv_idx = k_secv_idx(k_secv_set);
    word_idx = word_idx(words_set);

    # Initializez matricea stocastica
    retval = zeros(length(k_secv_set), length(words_set));
    
    # Deoarece w trebuie sa fie mai mic decat numarul de elemente ale lui
    #   k_secv_corpus si w + k sa fie mai mic decat numarul de elemente
    #   ale lui corpus_words, aleg astfel pozitia de oprire:
    poz_oprire = min(length(k_secv_corpus), length(corpus_words) - k);
    
    for w = 1:poz_oprire
        i = k_secv_idx(k_secv_corpus{w});
        j = word_idx(corpus_words{w + k});
        retval(i, j)++;
    endfor

endfunction
