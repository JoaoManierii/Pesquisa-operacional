# Variaveis de decisao
var xL >= 0; # unidades produzidas de chocolate ao leite 
var xT >= 0; # unidades produzidas de chocolate trufado

# Funcao objetivo
maximize lucro : 1*xL + 6*xT;

# Restricoes
s.t. R1 : xL <= 200; # qtd maxima de chocolate ao leite por dia 
s.t. R2 : xT <= 300; # qtd maxima de chocolate trufado por dia 
s.t. R3 : xL + xT <= 400; # qtd maxima produzida por dia  