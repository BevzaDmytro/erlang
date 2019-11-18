-module(lab6).
-export([matrix_data/1,swap_diag/0,process/4,swap_elements/6,row_process2/3]).

matrix_data(1)->
 [[1,5,7,2],
  [9,1,2,0],
  [8,2,1,7],
  [2,9,7,1]].

swap_diag()->
 Matrix = matrix_data(1),
 Len = length(Matrix),
 process(Matrix,Len,Len,[]).

process([Mx|Mxs],N,Len,Acc) ->
 process(Mxs, N-1, Len, Acc++row_process2(Mx,N,Len));

process([], 0, _, Acc)->
 Acc.

row_process2(Mx,N,Len) ->
   Firstelemnum = Len-N+1,
   {List2,[F|List3]} = lists:split(Firstelemnum-1,Mx),
   LT = List2++[lists:nth(N,Mx)|List3],
   {List4,[_|List5]} = lists:split(N-1,LT),
   List4++[F|List5].

% row_process(Mx,N,Len) ->
%   swap_elements(Mx,Len-N+1,N,1,[],[]).

% swap_elements([M|Mx],Fnum,Snum,I, Acc,Fel ) when I<Fnum ->
%   [M,swap_elements(Mx,Fnum,Snum,I+1, Acc,Fel )];

% swap_elements([M|Mx],Fnum,Snum,Fnum, Acc,Fel ) ->
%   swap_elements(Mx,Fnum,Snum,Fnum+1, Acc,[M]);

% swap_elements([M|Mx],Fnum,Snum,I, Acc,Fel ) when I>Fnum,I<Snum ->
%   swap_elements(Mx,Fnum,Snum,I+1, [Acc|M],Fel );

% swap_elements([M|Mx],Fnum,Snum,Snum, Acc,Fel ) ->
%   [[Acc|Fel]|Mx].


% insert element in list:
% {Left, Right} = lists:split(I-1, S),
% Left ++ [X|Right].

