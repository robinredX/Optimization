reset;
option solver loqo;

var a >= 0;
var b >= 0;

maximize benefit: (7000*log(1 + a)) + (5000*log(1 + b)) - a - b;

subject to constraint1: a + b <= 200;

solve;
display a;
display b;