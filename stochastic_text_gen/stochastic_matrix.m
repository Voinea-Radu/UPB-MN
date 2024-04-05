% Aceasta functie creeaza matricea stochastica, avand la dispozitie cele 2 dictionare de codificari, respectiv k-secventele în ordinea în care au fost date în "input.txt", respectiv token-urile (corpus\_words). K-secventei care incepe la pozitia $j$ ii va corespunde cuvantul care este la positia $j+k$ in input.txt.
function retval = stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)
    % build the stochastic matrix. Bonus if it is sparse
    % The 'stochastic' matrix SHOULD NOT be scaled (divided by sum of all)
    % It should just be entry-wise
    % This is how the checker tests it, to not have to deal with floating point errors
end
