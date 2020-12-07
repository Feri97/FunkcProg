-module(program).
-export([f/1,g/0,g/1]).

f(X) ->
    X + 2.

g() ->
    10.
g(X) ->
    X + 10.