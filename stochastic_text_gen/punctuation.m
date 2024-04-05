## DO NOT MODIFY
% Aceasta functie este utilizată pentru a testa daca un caracter este semn de punctuatie: ',' '.' '?' ';' ':' backslash '(' ')' '!' '"' "'" '-'.
function is_punc = punctuation (input)
  is_punc = input == ',' || input == '.' || input == '?' || input == ';' || input == ':' || input == '\' || input=='(' || input == ')' || input == '!' || input == '"' || input == "'" || input == '-';
endfunction
