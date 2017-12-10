:- write('Map Object Database:'), nl.
:- object_location('RedCar',X, Y), write('redcar located at '), write([X,Y]), nl.
:- object_type('Bus', X), write('Bus type is '), write(X), nl.
:- object('Police1',X), write('Police1 object : '), write(X), nl.
:- unsafe(A), write('unsafe: '), write(A), nl.
:- collision(A,B), write('collision: '), write([A, B]), nl.
:- get_all_of_type(car,X), write('get all cars:'), write(X), nl.
:- nl, write('States: ').
:- states(TN,MS,AL,LA,AR), 
 write(['TN', TN, ' MS', MS, ' AL', AL, ' LA', LA, ' AR', AR]), nl.
:- nl, write('squash/2:'), nl.
:- write(' 1: '), squash([a,b,c,d,e,f],X), write(X), nl.
:- write(' 2: '), squash([1,1,2,2,3,4,[5,6,[7,8]]],X), write(X), nl.
:- write(' 3: '), squash([[2,4,6,8],1,2,[3,4,[5,6],7],8],X), write(X), nl.
:- write(' 4: '), squash([[c],[s,c,h,e,m,e],[p,r,o,l,o,g]], X), write(X), nl.
:- nl, write('insertion_sort/2:'), nl.
:- write(' 1: '), insertion_sort([1,2,3,4,5],X), write(X), nl.
:- write(' 2: '), insertion_sort([5,4,3,2,1],X), write(X), nl.
:- write(' 3: '), insertion_sort([1, 3, 2, 9, 3, 8, 9, 10, 11, 1, 2],X), write(X), nl.
:- write(' 4: '), insertion_sort([1,3,9,3,9,7,5],X), write(X), nl.
:- write(' 5: '), insertion_sort([],X), write(X), nl.
