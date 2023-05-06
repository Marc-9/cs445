mymatch([], [], []).

mymatch([Head | Tail], [Head | Tail2], Binding) :-
    mymatch(Tail, Tail2, Binding).

mymatch([Head | Tail], [keyword | Tail2], [[keyword,Head] | Binding]):-
    mymatch(Tail, Tail2, Binding).


mymatch(List, [mwords | Tail2], [[mwords | Prefix] | Binding]) :-
    append(Prefix, Suffix, List),
    mymatch(Suffix, Tail2, Binding).

