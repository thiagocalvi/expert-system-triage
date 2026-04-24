% Explicabilidade

% por_que_nao(+Queixa, +CorAusente, -DiscriminadoresAusentes)
% Usado para explicar "Por que não foi diagnosticada essa Cor (sendo ela mais grave)?".
% Retorna quais discriminadores da regra da CorAusente não foram encontrados nos sintomas do usuário.
por_que_nao(Queixa, CorAusente, DiscFaltantes) :-
    findall(D,
        (regra(Queixa, CorAusente, DiscriminadoresRegra),
         member(D, DiscriminadoresRegra),
         \+ sintoma(D)),
        DiscFaltantesRaw),
    sort(DiscFaltantesRaw, DiscFaltantes).

% por_que(+Queixa, +CorAtiva, -DiscriminadoresPresentes)
% Explica "Por que essa regra foi provada?"
% Retorna quais discriminadores ativaram a regra.
por_que(Queixa, CorAtiva, DiscPresentes) :-
    regra(Queixa, CorAtiva, DiscriminadoresRegra),
    findall(D, (member(D, DiscriminadoresRegra), sintoma(D)), DiscPresentes),
    % A regra foi ativada somente se TODOS os discriminadores exigidos por ela estiverem presentes
    length(DiscriminadoresRegra, L1),
    length(DiscPresentes, L2),
    L1 =:= L2.
