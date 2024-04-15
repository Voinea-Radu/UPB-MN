function retval = stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)
	
	stochastic_matrix = zeros(length(corpus_words) - k, length(words_set));

	for i = 1:length(k_secv_corpus)
		k_secv_index = find(ismember(k_secv_set, k_secv_corpus{i}));

		next_word_index = find(ismember(words_set, corpus_words{i + k}));

		stochastic_matrix(k_secv_index, next_word_index) = stochastic_matrix(k_secv_index, next_word_index) + 1;
	end

	stochastic_matrix = stochastic_matrix(any(stochastic_matrix, 2), :);

	retval = sparse(stochastic_matrix);

end
