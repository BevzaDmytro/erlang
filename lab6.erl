-module(lab6).
-export([matrix_data/1,swap_diag/0]).

matrix_data(1)->
 [[1,0,0,2],
  [0,1,2,0],
  [0,2,1,0],
  [2,0,0,1]].

% swap_diag()->
% lists:reverse(matrix_data(1)).
% TODO: написати свою реалізацію перевороту матриці (пройтися від останнього і до першого рядка,
	% і  в кожному рядку з останнього до першого накопичити елементи)
swap_diag()->
 Matrix = matrix_data(1),
 process(Matrix,lenght(Matrix),[]).

process(Mx,N,Acc) ->
 Rev = lists:reverse
 process(Mx, N-1, Acc);
process(Mx, 0, Acc)->
 Acc.



