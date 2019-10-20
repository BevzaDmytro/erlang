-module(lab5).
-export([replace_parts/1]).

replace_parts(L) ->
 Len1 = length(L) div 3,
 lists:sublist(L,Len1+1,Len1)++lists:sublist(L,1,Len1)++lists:sublist(L,Len1*2+1,Len1).