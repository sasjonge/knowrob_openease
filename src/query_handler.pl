:- module(query_handler,
    [ 
    	openease_query(t,r)
    ]).

:- dynamic gen_msgs/1.

%:- use_module(library(data_vis)).

/** <module> Tunnels queries of openEASE and executes other actions if necessary.

@author Daniel Beßler
@license BSD
*/

%% openease_query(+Query, +Mode) is nondet.
%
% True for statements that hold during the whole
% duration of some time interval.
%
% @param Query The query to be executed
% @param Mode A list of modes for the execution.
%
openease_query(Query, Mode) :-
    call(Query),
    ignore(gen_msgs(Query)).
