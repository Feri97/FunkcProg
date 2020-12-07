-modul(new).
-export([call/2]).
-export([test/1]).
-export([convert_length/1]).

call(F,A) ->
    F(A).

test(A) ->
    case A of
        1 -> egy;
        2 -> ketto;
        _ -> egyeb;
        end.

covert_length(Length) ->
    case Length of 
        {centimeter, X} ->
            {inch, X / 2.54};
        {inc, X} ->
            {centimeter, X * 2.54};
        end.