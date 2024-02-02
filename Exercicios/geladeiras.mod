# Variaveis de decisao
var xL >= 0; # unidades produzidas do modelo Luxo
var xB >= 0; # unidades produzidas do modelo basico

# Funcao objetivo
maximize lucro : 100*xL + 50*xB;

# Restricoes
s.t. R1 : 10*xL + 8*xB <= 25000; # homens-hora
s.t. R2 : xL + xB <= 4500; # linha de montagem
s.t. R3 : xL <= 1500; # maximo a ser vendido do modelo Luxo
s.t. R4 : xB <= 6000; # maximo a ser vendido do modelo Basico
