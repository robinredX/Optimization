reset;
option solver loqo;

var x1 >= 0;

var x2;

var x3 <= 0.5;

minimize f: 2*x1^3 + 2*(3*x2 - x3)^2 - 4*x3 + 2;

solve;
display x1;
display x2;
display x3;