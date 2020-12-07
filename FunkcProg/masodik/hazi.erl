-module(hazi).
-export([convert/1]).

convert({T, km}) ->
    T / 1.60934;
convert({T, miles}) ->
    T * 1.60934;
convert({T, _}) ->
    T;
convert(_) ->
    bad_arg.
