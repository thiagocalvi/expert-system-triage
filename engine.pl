% Motor de Inferência

% avalia_queixa(+Queixa, -Cor)
% Retorna a maior prioridade (cor mais grave) para a qual os sintomas do paciente ativam uma regra.
avalia_queixa(Queixa, Cor) :-
    % Tenta encontrar a primeira regra (mais grave devido à ordem) que seja satisfeita
    (   regra(Queixa, Cor, Discriminadores),
        % Verifica se todos os discriminadores da regra estão presentes nos sintomas do paciente
        sintomas_presentes(Discriminadores),
        ! % Assim que encontrar a primeira (mais grave), corta e retorna
    ) ;
    % Se nenhuma regra for satisfeita, cai no azul (Não urgente)
    Cor = azul.

% Verifica se uma lista de discriminadores está toda declarada como sintoma
sintomas_presentes([]).
sintomas_presentes([D|Resto]) :-
    sintoma(D),
    sintomas_presentes(Resto).

% Para buscar todas as queixas disponíveis na População atual (já carregada)
todas_queixas(ListaQueixas) :-
    setof(Q, C^D^regra(Q, C, D), ListaQ),
    % A consulta acima busca regras ativas na memória.
    ListaQueixas = ListaQ.
