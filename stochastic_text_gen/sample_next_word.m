function probs = sample_next_word (text, words_idx, k_secv_idx, k, stoch)
	
	last_k_sequence = text(end - k + 1:end);

	last_k_sequence_idx = find(ismember(words_idx, last_k_sequence));

	probs = stoch(last_k_sequence_idx, :);

endfunction
