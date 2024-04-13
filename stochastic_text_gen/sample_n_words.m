% Aceasta functie genereaza n cuvinte pornind de la textul dat astfel: Genereaza un cuvant, il appenduieste la text, si apoi genereaza alt cuvant pt k-secvente ultima, pe care iar il adauga la final etc.
function retval = sample_n_words (text,  widx, kscvidx, k, stoch, word_set, n)
  % Sample word using sample_next_word from the last k elements of text (k-seq), ad it to the end of text
  % repeat n times
  % This function is not tested by the checker, it can be tested as a binus by running `run tema1_script.m`
  for i = 1:n
    kseq = text(end-k+1:end);
    kseqidx = kscvidx(kseq);
    next_word = sample_next_word(widx, kseqidx, stoch, word_set);
    text = [text next_word];
  end
  retval = text;
endfunction
