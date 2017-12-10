mapobject('RedCar', 1, 1, 75.0, 0, car).
mapobject('BlueCar', 3, 1, 45.0, 270, car).
mapobject('Bus', 7, 6, 55.0, 90, car).
mapobject('Police1', 1, 5, 55.0, 180, car).
mapobject('Tree1', 3, 1, 0.0, 180, tree).
mapobject('Tree2', 4, 8, 0.0, 180, tree).
mapobject('31st', 1, 2, 0.0, 180, street).
mapobject('Tree4', 3, 6, 0.0, 180, tree).
mapobject('Tree5', 4, 8, 0.0, 180, tree).
mapobject('YellowCar', 2, 4, 85.0, 180, car).

%1A-MapObject A is located at x,y
object_location(A,X,Y):-!, mapobject(A,X,Y,_,_,_).

%1B-Type of Object
object_type(A,T):- mapobject(A,_,_,_,_,T).

%1C-List Attributes of an Object Type
object(A,L):- findall((A,B,C,D,E,F),mapobject(A,B,C,D,E,F),L).

%1D-Unsafe
unsafeObj(LB):- mapobject(LB,_,_,SP,_,_),SP>70.
unsafe(A):- findall(LB, unsafeObj(LB),A).

%1E-Collision
collision(A,B) :- mapobject(A,X,Y,_,_,_), mapobject(B,X1,Y1,_,_,_), X=X1, Y=Y1.

%1F-Get all of type
get_all_of_type(T,Lst):- findall(Label, mapobject(Label,_,_,_,_,T), Lst).

%2 TN,MS,AL,LA,AR
states(TN,MS,AL,LA,AR):-
    member(TN, [blue,green,orange]),
    member(MS, [blue,green,orange]),
    member(AL, [blue,green,orange]),
    member(LA, [blue,green,orange]),
    member(AR, [blue,green,orange]),
    TN = green, TN = LA, MS = blue, AL = orange, AL = AR, !.

%3Insertion_sort/2
insertion_sort(L1,L2) :- isort_inter(L1,[],L2).

isort_inter([],L,L).
isort_inter([H|T],L1,L) :- insert(L1,H,L2),isort_inter(T,L2,L).

insert([],X,[X]).
insert([H|T],X,[X,H|T]) :- X =< H, !.
insert([H|T],X,[H|T2]) :- insert(T,X,T2).

%4 Squash/2 List-using appand, flatten, member
flat([],[]).
flat([H|T],X) :- !, flatten(H,X1), flatten(T,X2), append(X1,X2,X).
flat([H|T],[H|T1]) :- H \= [], H \= [_|_], flatten(T,T1).

removeD([],[]) :- !.
removeD([H|T],T2) :- member(H,T), removeD(T,T2).
removeD([H|T],[H|T2]) :- removeD(T,T2).

squash([],[]) :- !.
squash([H|T], X) :- flat([H|T],Y), removeD(Y, X), !.
