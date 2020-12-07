-module(elements).
-export([call/2]).

-export([double/1,convert/1,convert/2, lista/2, lista/1]).
-export([hossz/1, hossz/2, hossza/1]).
-export([idojaras/2,idojaras/1]).
-export([nonrek/1]).

multiplie(A,B) ->
    A * B.

nonrek() when is_list(L) ->
    [multiplie(X, X) || X <- L, X > 3];
nonrek(_) ->
    bad_arg.


call(F,D) ->
    F(D).

idojaras(L) when is_list(L) ->
    Osszes = idojaras(0,L),
    io:format("A jelentés feldolgozása lefutott ~p városra \n", [Osszes]).
idojaras(_) ->
    bad_arg.

idojaras(DB, [Eleje | Vege]) when is_list(Eleje) ->
    idojaras(idojaras(DB,Elej), Vege);
idojaras(DB, [{V,C} | Varosok]) ->
    io:format("~p városban ~p fok van\n", [V,C]),
    idojaras(DB + 1, Varosok);
idojaras(DB, [Adat | Varosok]) ->
    io:format("Hibás adat: ~p\n",[Adat]),
    idojaras(DB, Varosok);
idojaras(DB, []) ->
    DB.
