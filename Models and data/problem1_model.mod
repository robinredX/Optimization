reset; 
options solver loqo;
var x1; # Define decision variables
var x2;

minimize f: (x1-4)^2 + 7*(x2-4)^2 + 4*x2; # Objective function

solve; # Display optimized value for objective function
display x1; # Display value of x1 for optimized value of objective function
display x2; # Display value of x2 for optimized value of objective function