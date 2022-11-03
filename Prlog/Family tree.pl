father(ali,ahmed).
father(ali,saeed).
father(ali,kahled).
father(ali,salee).
father(ali,asmaa).
father(ahmed,talal).
father(ahmed,hanaa).
father(ahmed,helal).
father(ahmed,hoda).
father(saeed,saleem).
father(saeed,soaad).
father(saeed,sarah).
father(kahled,fatima).
father(kahled,omar).
father(kahled,arwa).
father(kareem,saif).
father(kareem,hadeel).
father(naser,fawaz).
father(naser,salma).
husband(naser,asmaa).
husband(kareem,salee).
husband(ali,noor).
husband(saeed,marem).
husband(ahmed,rahmah).
husband(kahled,aisha).
male(ali).
male(ahmed).
male(saeed).
male(kahled).
male(talal).
male(omar).
male(helal).
male(saleem).
male(kareem).
male(saif).
male(naser).
male(fawaz).
female(salma).
female(hoda).
female(samer).
female(asmaa).
female(hadeel).
female(noor).
female(marem).
female(rahmah).
female(aisha).
female(salee).
female(hanaa).
female(soaad).
female(sarah).
female(fatima).
female(arwa).

grandfather(X,Y):-
  father(Z,Y),father(X,Z).

grandfather(X,Y):-
  mother(Z,Y),father(X,Z).

grandmother(X,Y):-
  grandfather(Z,Y),husband(Z,X).

mother(X,Y):-
  female(X),
  father(Z,Y),husband(Z,X).

wife(X,Y):-
  husband(Y,X).


brother(X,Y):-
  male(X),
  father(Z,X),father(Z,Y),X\=Y.

sister(X,Y):-
  female(X),
  father(Z,X),father(Z,Y),X\=Y.

uncle_fath(X,Y):-
    father(Z,Y),brother(X,Z).

aunt_fath(X,Y):-
  father(Z,Y),sister(X,Z).

uncle_moth(X,Y):-
  mother(Z,Y),brother(X,Z).

aunt_moth(X,Y):-
  mother(Z,Y),sister(X,Z).

sister_husband(X,Y):-
  sister(Z,Y),husband(X,Z).

brother_wife(X,Y):-
  brother(Z,Y),husband(Z,X).

son_uncle_fath(X,Y):-male(X),
  father(Z,X),uncle_fath(Z,Y).

daughter_uncle_fath(X,Y):-female(X),
  father(Z,X),uncle_fath(Z,Y).

son_aunt_fath(X,Y):-male(X),
  mother(Z,X),aunt_fath(Z,Y).

daughter_aunt_fath(X,Y):-female(X),
  mother(Z,X),aunt_fath(Z,Y).

son_uncle_moth(X,Y):-male(X),
  father(Z,X),uncle_moth(Z,Y).

daughter_uncle_moth(X,Y):-female(X),
  father(Z,X),uncle_moth(Z,Y).

son_aunt_moth(X,Y):-male(X),
  mother(Z,X),aunt_moth(Z,Y).

daughter_aunt_moth(X,Y):-female(X),
  mother(Z,X),aunt_moth(Z,Y).

son_brother(X,Y):-male(X),
  uncle_fath(Y,X).

son_brother(X,Y):-male(X),
  aunt_fath(Y,X).

daughter_brother(X,Y):-female(X),
  uncle_fath(Y,X).

daughter_brother(X,Y):-female(X),
  aunt_fath(Y,X).

son_sister(X,Y):-male(X),
  uncle_moth(Y,X).

son_sister(X,Y):-male(X),
  aunt_moth(Y,X).

daughter_sister(X,Y):-female(X),
  uncle_moth(Y,X).

daughter_sister(X,Y):-female(X),
  aunt_moth(Y,X).





























