% ===========================
% Sample Queries for Testing
% ===========================

% 1. Basic Relationship Queries

% Test parent/2
?- parent(john, paul).
?- parent(mary, susan).

% Test male/1 and female/1
?- male(paul).
?- female(linda).


% 2. Derived Relationships Using Rules

% Test grandparent/2
?- grandparent(john, james).
?- grandparent(mary, linda).

% Test sibling/2
?- sibling(paul, susan).
?- sibling(james, linda).
?- sibling(paul, paul).  % should return false

% Test cousin/2
?- cousin(james, david).
?- cousin(linda, david).


% 3. Logical Inference Queries

% Test child/2
?- child(paul, john).
?- child(james, paul).

% Test children/2
?- children(john, C).
?- children(paul, C).

% Test siblings/2
?- siblings(susan, S).
?- siblings(linda, S).

% Test is_cousin/2
?- is_cousin(james, david).
?- is_cousin(mark, david).  % should return false


% 4. Recursive Logic Queries

% Test descendant/2
?- descendant(mark, mary).
?- descendant(D, john).
?- descendant(X, susan).

% Additional test for grandparent
?- grandparent(X, mark).