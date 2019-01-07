% Val Kobilaski 20060115
solution(AI):-
    %the person with a chronic illness is drinking hot chocolate
    person(CI), CI=HC,
    %the person with a new baby is not the person drinking coffee
    person(NB),  \+ NB=CI, person(C), \+ C=HC, \+ NB=C,
    %the person getting divorced is not drinking coffee
    person(GD), \+ GD=CI, \+ GD=NB, \+ GD=C,
    %the software developer just moved to Kingston
    person(SD), SD=MK, uniq_people(NB,GD,CI,MK),
    % radko is drinking tea
     T=radko, \+ T=C, \+ T=HC, \+ T=NB,
    %Edith is the computer security researcher 
     CS=edith, \+ CS=SD,
    %nat does not have a chrinic illness and is not moving to Kingston
    \+ nat=CI, \+ nat=MK,
    %the data analytics researcher is not drinking fruit juice
    person(DA), uniq_people(AI,CS,DA,SD),person(FJ), uniq_people(C,T,HC,FJ),\+ DA=FJ.



% Checks that all four arguments are not the same value
uniq_people(A,B,C,D):- person(A),person(B), person(C), person(D),
            \+ A=B, \+ A=C, \+ A=D, \+ B=C, \+ B=D, \+ C=D.

% Instantiating variables
person(edith).
person(nat).
person(radko).
person(yasmin).
