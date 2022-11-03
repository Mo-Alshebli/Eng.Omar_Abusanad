ask:-writeln('please answer by yes or no '),
    writeln('are you study '),read(A),check(A).
check(A):-A='yes',writeln('are you finshed your school '),read(B),check2(B).
check(A):-A='no',writeln('you have to study for improve your self'),
    writeln('thanks for using my program  *** I hope all the best for your').
check2(B):-B='yes',writeln('Are you going to study in university'),read(C),check3(C).
check2(B):-B='no',writeln('You have to study workhard for get good marks'),nl,
    writeln('thanks for using my program   ***  I hope all the best for your').

check3(C):-C='yes',writeln('do you want tips for what is you can study'),read(D),check4(D).
check3(C):-C='no',writeln('Dont lose hope because the university will not set your future but you can'),
    writeln('thanks for using my program   ***  I hope all the best for your').
check4(D):-D='yes',writeln('Do you like math and physics more than biology and chemistry'), read(E),check5(E).
check4(D):-D='no',writeln('thanks for using my program   ***  I hope all the best for your').
check5(E):-E='yes',writeln('Do you like math more than physics'),read(F),check6(F).
check5(E):-E='no',writeln('Do you like biology more than chemistry'),read(G),check7(G).
check6(F):-F='yes',writeln('Can you use computer and like that'),read(H),check8(H).
check6(F):-F='no',writeln('Can you use computer and like that'),read(I),check9(I).
check7(G):-G='yes',writeln('Do you like medical college more than trade college'),read(J),check10(J).
check7(G):-G='no',writeln('Do you like medical college more than trade college'),read(K),check11(K).
check8(H):-H='yes',writeln('join in computer college you will be great software engineer '),
              writeln('does  program help you'),read(L),check12(L).
check8(H):-H='no',writeln('do you like college of engineer more than trade college'),read(M),check13(M).
check9(I):-I='yes',writeln('join in computer college you will be great hardware engineer '),
              writeln('does  program help you'),read(L),check12(L).
check9(I):-I='no',writeln('join in college of enineering you will be great civil engineer '),
              writeln('does  program help you'),read(L),check12(L).
check10(J):-J='yes',writeln('join in medical college you will be great doctor'),
              writeln('does  program help you'),read(L),check12(L).
check10(J):-J='no',writeln('join in trade college you will be great pusinessman '),
              writeln('does  program help you'),read(L),check12(L).
check11(K):-K='yes',writeln('join in medical college you will be great pharmacist'),
              writeln('does  program help you'),read(L),check12(L).
check11(K):-K='no',writeln('join in trade college you will be great pusinessman '),
              writeln('does  program help you'),read(L),check12(L).
check12(L):-L='yes',writeln('thanks for using my program   ***  I hope all the best for your').
check12(L):-L='no',writeln(' I hop that the program will be benefit you in its next release   ***  I hope all the best for your').
check13(M):-M='yes',writeln('join in college of enineering you will be great architect '),
              writeln('does  program help you'),read(L),check12(L).
check13(M):-M='no',writeln('join in trade college you will be great accountant '),
              writeln('does  program help you'),read(L),check12(L).















