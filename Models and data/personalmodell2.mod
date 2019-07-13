reset;
option solver loqo;
option loqo_options 'iterlim 30 dual', solver loqo;

param n>=1;
param x1{1..n};
param x2{1..n};
param y{1..n};
var theta1;
var theta2;
var intercept;
param lambda=3;


minimize f1: sum{i in 1..n} (theta*x[i] + intercept - y[i])^2 + lambda*(theta1^2 + theta2^2);


data personaldata.dat;
solve;
display theta1;
display theta2;
display intercept;