reset;
option solver loqo;

var x>=0;
var y>=0;
param t = 1;
minimize objective: 
	(x-2)^2+3*y - (1/t)*log(-x-y+4);

solve;
display x;
display y;