%https://repl.it/languages/erlang
-module(main).
-export([factHelp/2,fact/1,start/0]).

factHelp(N,Res) when N==0 ->
  Res;
factHelp(N,Res) when N>0 ->
  factHelp((N-1),(N*Res)).

fact(N) ->
  factHelp(N,1).

start() ->
  {ok,[N]}=io:fread("enter>","~d"),
  io:fwrite("~w",[fact(N)]).