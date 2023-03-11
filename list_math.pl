count(0, []).
count(Count, [Head|Tail]) :- count(TailCount, Tail), Count is TailCount + 1.
sum(0, []).
sum(Sum, [Head|Tail]) :- sum(TailSum, Tail), Sum is TailSum + Head.
average(Average, List) :- sum(Sum, List), count(Count, List), Average is Sum / Count.
