/* Prolog Workshop
   Problem 1: last element of a list
   EXPLANATION: The first argument is a var that holds return value, second arguement is the list to search.
*/
% my_last(?Last, +List)

my_last(X, [X]).
my_last(X, [_|T]) :- my_last(X, T).
/*
Example querie:
my_last(X, [a,b,c,d]).

% RESULT: X = d
*/



/*
Problem 2: find the k'th element of a list
EXPLANATION: The first argument is a var that holds return value, second arguement is the list to search
    and the third argument is the index of the element to find.
*/
% element_at(?Element, ?List, ?Index)

element_at(X, [X|_], 1).
element_at(X, [_|L], K) :- K > 1, K1 is K - 1, element_at(X, L, K1).
/*
Example querie:
element_at(X, [a,b,c,d], 3).

% RESULT: X = c
*/



/*
Problem 3: reverse a list
EXPLANATION: The first argument is a var that holds return value (a reversed list), 
    second arguement is the list to reverse.
*/

% my_reverse(L1,L2) :- L2 is the list obtained from L1 by reversing 
%    the order of the elements.
%    (list,list) (?,?)

% my_reverse(?List, +List)

my_reverse(L1, L2) :- my_rev(L1, L2, []).
my_rev([], L2, L2) :- !.
my_rev([X|Xs], L2, Acc) :- my_rev(Xs, L2, [X|Acc]).
/*
Example querie:
my_reverse(X, [a,b,c,d]).

% RESULT: X = [d,c,b,a]
*/

/* Problem 4: 

Add these to the database:

% ako(chair, furniture) .
% ako(chair, seat) .
% isa(your_chair, chair) .
% isa(you, person) .
% made_of(your_chair, wood) .
% color(wood, brown) .
% belongs_to(your_chair, you) .
*/

/* What queries should we run to answer the following questions: */

/* a)  What color is your chair? */
% ?- made_of(your_chair, X), color(X, Color)

/* Output: Color = brown, X = wood */

/* b) Is your chair a seat? */
% ?- isa(your_chair, X), ako(X, seat) .

/* Output: X = chair */

/* c)  Does your chair belong to a person? */
% ?- belongs_to(your_chair, X), isa(X, person) .

/* Output: X = you */



/* 
Exercise 2: Carnivores and Herbivores Database

Set up the following database:
```prolog
isa(carnivore, lion).
isa(carnivore, leopard).
isa(carnivore, bear).

isa(hunter, lion).
isa(hunter, leopard).
isa(hunter, bear).

isa(herbivore, elephant).
isa(herbivore, zebra).
isa(herbivore, wildebeeste).
isa(herbivore, bear).

isa(hunted, zebra).
isa(hunted, wildebeeste).
```
*/

/* Queries */

/* a) Is there a herbivore that also hunts? */

% ?- isa(herbivore, Animal), isa(hunter, Animal).

/* Output: Animal = bear */

/* b) Is there a herbivore that is not hunted? */

% ?- isa(herbivore, X), not(isa(hunted, X)).

/* Output: X = elephant */
