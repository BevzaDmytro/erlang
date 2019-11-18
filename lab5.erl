-module(lab5).
-export([replace_parts/1]).
-export([replace_parts2/1]).
-export([replace_parts_pro/5]).

% довжина списку кратна трьом, поміняти першу і другу третину місцями
replace_parts(L) ->
 Len1 = length(L) div 3,
 lists:sublist(L,Len1+1,Len1)++lists:sublist(L,1,Len1)++lists:sublist(L,Len1*2+1,Len1).

replace_parts2(L) ->
  Len = length(L) div 3,
  Len2 = Len + 1,
  Len3 = 2 * Len + 1,
  replace_parts_pro(L,1,Len2,Len3,[]).

replace_parts_pro([X|Xs], I, Len2, Len3, Acc ) when I < Len2 ->
  replace_parts_pro(Xs,I+1,Len2,Len3,[Acc|X]);

replace_parts_pro([X|Xs], I, Len2, Len3, Acc ) when I>=Len2,I<Len3 ->
  [X|replace_parts_pro(Xs,I+1,Len2,Len3,Acc)];

replace_parts_pro(X,Len3,_Len2, _Len3, Acc) ->
  [Acc|X].