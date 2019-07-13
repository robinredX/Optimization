reset;
option solver loqo;
var r >= 0; # Define decision variables (in 1000 L’s)
var s >= 0;

minimize objective: 100*r + 50*s;
subject to constraint1: s <= 100; # Upper limit

subject to constraint2: 50*r + 250*s <= 100*(r+s); # Pollution (ppm)

subject to constraint3: r+s >= 500; # Need of the city (In 1,000’s L)

solve;
display r;
display s;