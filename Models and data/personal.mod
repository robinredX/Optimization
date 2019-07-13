reset;
option solver loqo;

set cities;
var d{i in cities} >= 2; # Define decision variables
param flightCost{i in cities};
param livingCost{i in cities};

maximize f: sum{i in cities} (d[i]);
subject to constraint: sum{i in cities} (flightCost[i] + d[i]*livingCost[i]) <= 2000; # 2000 Euro is my budget

data personal.dat;
solve;
display d;