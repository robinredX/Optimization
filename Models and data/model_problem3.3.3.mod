reset;
option solver loqo;

set items;
var x{i in items}; # Define decision variables
param C{i in items};
param budget;

maximize Benefit: sum{i in items} (C[i]*log(1 + x[i]) - x[i]);
subject to constraint: sum{i in items} (x[i]) <= budget;

data problem3.3.2.dat;
solve;
display x;