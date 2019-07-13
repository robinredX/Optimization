reset;
option solver loqo;

var b1 >= 0;
var b2 >= 0;
var b3 >= 0;
var b4 >= 0;

minimize benefi: 55*b1 + 65*b2 + 35*b3 + 85*b4;
subject to c0: b1+b2+b3+b4 = 1;
subject to c1: 0.05 <= b2 <= 0.2;
subject to c2: b3 >= 0.3;
subject to c3: 0.1 <= b1 <= 0.25;
subject to c4: 0.35*b1 + 0.6*b2 + 0.35*b3 + 0.4*b4 <= 0.5;
subject to c5: 0.08 <= 0.15*b1 + 0.05*b2 + 0.2*b3 + 0.1*b4 <= 0.13;
subject to c6: 0.3*b1 + 0.2*b2 + 0.4*b3 + 0.2*b4 <= 0.35;
subject to c7: 0.2*b1 + 0.15*b2 + 0.05*b3 + 0.3*b4 >= 0.19;

solve;
display b1;
display b2;
display b3;
display b4;