-module(harmadik).
-export([hossz/1,hossz/2]).
-export([idojaras/1]).

idojaras([{V,C} | Varosok]) ->
    io:format("~p városban -p fok van jelenleg\n", [V,C]),
    idojaras(Varosok);
idojaras() ->
    io:format("Jelentes vege", []),
    end_of_procces.

hossz([_ | V]) ->
    1 + hossz(V);
hossz([]) ->
    0.

hossza(L) when is_list(L)->
    hossz(0, L);
hossza(_) ->
    bad_arg.

hossz(DB, [_ | Vege]) ->
    hossz(DB) + 1, Vege);
hossz(DB, []) ->
    DB.
hossz(_,_) ->
    bad_arg.