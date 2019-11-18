-module(lab7).
-export([paintings/0,del_duplicates/1,db_paintings/0,del_dbles_mod/1,del_examples_mod/2]).

% картина, напрям, епоха створення

db_paintings() ->
 [{p1,n1,e1},
  {p2,n1,e1},
  {p3,n1,e1},
  {p4,n2,e2},
  {p5,n2,e2},
  {p6,n1,e1}].


paintings() ->
  DB = db_paintings(),
  L = [{Nap,Epoch,
       [Painting || {Painting,N,E} <- DB,
       Nap == N, Epoch == E ]} ||
       {_,Nap,Epoch} <- DB],
   del_dbles_mod(L).

 del_duplicates(L) ->
 [].

 del_dbles_mod([{W,C,L}|T]) -> 
  Tclear = del_examples_mod(T,{W,C}),  
  [{W,C,L}|del_dbles_mod(Tclear)];
 del_dbles_mod([]) -> [].

 del_examples_mod([],_) -> []; 
 del_examples_mod([{W,C,L}|Xs],Obj) -> 
  case {W,C} == Obj of    
        true -> del_examples_mod(Xs,Obj);      
        false -> [{W,C,L}| del_examples_mod(Xs,Obj)]  
  end.
