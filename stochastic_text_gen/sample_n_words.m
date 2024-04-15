function retval = sample_n_words (text, widx, kscvidx, k, stoch, word_set, n)

	for i = 1:n
		kseq = text(end - k + 1:end);
		kseqidx = kscvidx(kseq);
		next_word = sample_next_word(widx, kseqidx, stoch, word_set);
		text = [text next_word];
	end

	retval = text;
	
endfunction
