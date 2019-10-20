-module(lab2).
-export([factorial/1]).
-export([calculate_factorial/1]).


factorial(X) when X<1 -> 0;

factorial(X) when X>1 ->
 calculate_factorial(X).



 calculate_factorial(X) ->
   if
   	X>1 -> calculate_factorial(X-1) * X;
   	X==1 -> X
   end.
 