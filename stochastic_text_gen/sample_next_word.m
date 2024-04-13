% Aceasta functie intoarce probabilitatile (linia din matrice) aferente ultimei k-secvente din text.
function probs = sample_next_word (text, words_idx, k_secv_idx, k, stoch)
  % return scaled or unscaled probabilities (line of the stochastic matrix) corresponding to the last k-squence of text
    % Extract the last k-sequence from the text
    last_k_sequence = text(end-k+1:end);
    
    % Find the index of the last k-sequence in the words_idx array
    last_k_sequence_idx = find(ismember(words_idx, last_k_sequence));
    
    % Get the probabilities (line of the stochastic matrix) corresponding to the last k-sequence
    probs = stoch(last_k_sequence_idx, :);
endfunction
