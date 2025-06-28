% MSCS 632 Assignment 8
% Building a Family Tree in Prolog

% Gender facts
male(john).
male(paul).
male(james).
male(mark).
male(david).

female(mary).
female(susan).
female(linda).
female(anna).

% Parent relationships
parent(john, paul).
parent(john, susan).
parent(mary, paul).
parent(mary, susan).

parent(paul, james).
parent(paul, linda).
parent(linda, mark).
parent(linda, anna).
parent(susan, david).

% Derived relationships
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

cousin(X, Y) :-
    parent(P1, X),
    parent(P2, Y),
    sibling(P1, P2),
    X \= Y.

% Inference Queries
child(X, Y) :-
    parent(Y, X).

children(Parent, Children) :-
    findall(Child, parent(Parent, Child), Children).

siblings(Person, Siblings) :-
    findall(Sib, (sibling(Person, Sib)), Siblings).

is_cousin(X, Y) :-
    cousin(X, Y).

% Recursive logic
descendant(X, Y) :-
    parent(Y, X).

descendant(X, Y) :-
    parent(Y, Z),
    descendant(X, Z).