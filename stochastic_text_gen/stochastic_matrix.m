% Aceasta functie creeaza matricea stochastica, avand la dispozitie cele 2 dictionare de codificari, respectiv k-secventele în ordinea în care au fost date în "input.txt", respectiv token-urile (corpus\_words). K-secventei care incepe la pozitia $j$ ii va corespunde cuvantul care este la positia $j+k$ in input.txt.
function retval = stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)
    % build the stochastic matrix. Bonus if it is sparse
    % The 'stochastic' matrix SHOULD NOT be scaled (divided by sum of all)
    % It should just be entry-wise
    % This is how the checker tests it, to not have to deal with floating point errors
    % Initialize the stochastic matrix
    stochastic_matrix = zeros(length(words_set), length(corpus_words) - k);

    % Iterate through each k-secvent in the corpus
    for i = 1:length(k_secv_corpus)
        % Get the index of the k-secvent in the k-secvent set
        k_secv_index = find(ismember(k_secv_set, k_secv_corpus{i}));

        % Get the index of the next word in the corpus
        next_word_index = find(ismember(words_set, corpus_words{i+k}));

        % Increment the corresponding entry in the stochastic matrix
        stochastic_matrix(next_word_index, k_secv_index) = stochastic_matrix(next_word_index, k_secv_index) + 1;
    end

    % Normalize the stochastic matrix
    stochastic_matrix = stochastic_matrix ./ sum(stochastic_matrix, 1);

    % Return the stochastic matrix
    retval = stochastic_matrix;
end
