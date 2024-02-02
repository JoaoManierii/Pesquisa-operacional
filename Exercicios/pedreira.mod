# www.facom.ufu.br/~phrg/solver

set I;	# conjunto dos produtores (pedreiras)
set J;	# conjunto dos consumidores (despositos)

param a{i in I};	# quantidade disponivel no produtor i
param b{j in J};	# quantidade demandada no consumidor j
param c{i in I, j in J};	# custo unitario de transporte de i a j

var x{i in I, j in J} >= 0;

# funcao objetivo: minimizar o custo total
minimize custo : sum{i in I, j in J} c[i,j] * x[i,j];

# restricoes
# dois tipos de restricao: oferta e demanda
s.t. oferta{i in I}  : sum{j in J} x[i,j] <= a[i];
s.t. demanda{j in J} : sum{i in I} x[i,j] = b[j];

solve;

data;

set I := P1 P2 P3 P4;
set J := D1 D2 D3;

param a := P1 433
           P2 215
           P3 782
           P4 300;

param b := D1 697
           D2 421
           D3 612;

param c :	D1	D2	D3 :=
		P1	30	13	21
        P2	12	40	26
        P3	27	15	35
        P4	37	25	19;

end;