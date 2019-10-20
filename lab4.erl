-module(lab4).
-export([replace_last/1, get_last_elems/2, accumElements/3,delete_items/2]).

replace_last(L) ->
 Last = get_last_elems(L,2),
 L2 = delete_items(L,2),
 Last ++ L2.

get_last_elems(L, N) ->
 accumElements(lists:reverse(L), N, []).

accumElements(L, N, Acc) ->
if
	N>0 ->
 	 accumElements(L, N-1, [Acc++lists:nth(N,L)]);
 	N==0 ->
 	 Acc
end.

delete_items(L,N) when N>0 ->
 delete_items(lists:droplast(L), N-1);
 delete_items(L,N) when N==0 ->
 L.

