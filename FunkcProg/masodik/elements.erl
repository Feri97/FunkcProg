-module(elements).
-export([double/1, convert/1, convert/2, list/2, list/1]).

list(L) ->
    list(0,L).

list(Osszeg, [Elem | Rest]) ->
    list(Osszeg + Elem,Rest);
list(Osszeg, []) ->
    Osszeg;
list(Osszeg,_) ->
    Osszeg.


convert(A, B) ->
    {A * 2, B* 2}.

double(X) -> 
    X * 2.

convert({D, inch}) ->
    D / 2.54;
convert({D, cm}) ->
    D * 2.54;
convert({D, _}) ->
    D;
convert(_)->
    bad_arg.

