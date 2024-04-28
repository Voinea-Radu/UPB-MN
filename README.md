# Detectarea anomaliilor
Detectarea anomaliilor incepe prin identificarea valorilor extreme in cadrul 
unui set de date de antrenament. Anomaliile sunt submultimi ale datelor de 
antrenament care nu se potrivesc cu restul setului de date. Metoda implica
calculul vectorului mediu si a matricei de varianta pentru setul de date si
definirea unei functii pentru a descrie probabilitatea aparitiei unui element
in cadrul setului de date. Un element este considerat o anomalie daca valoarea
functiei sale de probabilitate este mai mica decat un anumit prag, indicand ca
nu se potriveste cu modelul setului de date. Procesul include calculul mediei
si variantei, estimarea factorului de prag epsilon si determinarea tuturor 
valorilor extreme din setul de date de testare ca acele vectori pentru care 
valoarea functiei este mai mica decat cel mai bun epsilon. Aceasta metoda este 
esentiala pentru modelele care folosesc date de antrenament pentru a asigura 
consistenta si pentru a identifica anomaliile in datele de antrenament/testare.

# Regresia Kernel
Regresia Kernel este o metoda utilizata in invatarea automata pentru a face 
predictii pe baza unor seturi de date mari. Aceasta implica gasirea relatiilor
intre date prin minimizarea unei functii de cost si a pierderilor asociate. 
Metoda necesita determinarea unor coeficienti specifici (greutati) pentru a 
estima iesirea (functia y) pentru un anumit set de date de intrare. O functie
kernel calculeaza un produs scalar favorabil, permitand modelarea fenomenelor
non-liniare intr-un mod liniar. in algoritmii de regresie Kernel, estimarea 
reala a θ nu este necesara; in schimb, predictia se bazeaza pe vectorul a si pe
functia kernel.

# Generarea de text stochastic
Utilizeaza lanturi Markov pentru a modela secvente de evenimente, unde 
probabilitatea fiecarui eveniment depinde doar de starea atinsa in evenimentul
anterior. Foloseste un set de antrenament de texte, cum ar fi Tiny Shakespeare,
pentru a construi lantul Markov pentru predictia textului. Implementeaza o 
fereastra glisanta de dimensiune K pentru a capta secventa de cuvinte, oferind 
context pentru predictia cuvantului urmator. Extrage caracteristicile 
(secvente-K) si etichetele (cuvintele urmatoare) din text pentru a antrena 
modelul, avand ca scop generarea naturala a textului. Aceasta metoda este o 
abordare simplificata a generarii de text in comparatie cu modelele mai 
complexe, cum ar fi GPT (General Purpose Transformer).