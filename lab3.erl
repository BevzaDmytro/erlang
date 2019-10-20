-module(lab3).
-export([main_function/5, list_function/5,sum_func/4]).

main_function(X, Xf, H, N, M) ->
 list_function(X, Xf+H/100, H, N, M).

list_function(X, Xf, _H, _N, _M) when X>Xf -> [];

list_function(X, Xf, H, N, M) when X=<Xf ->
 [sum_func(X,N,M,0)|list_function(X+H, Xf, H, N, M)].

sum_func(X,N,M,0) when N>0,M>1 ->
 sum_func(X,N-1,M-1,(1/(N * N))/(1/(M*M -1)) * X);
sum_func(_X,0,_M,S)-> S;
sum_func(_X,_N,1,S)-> S.