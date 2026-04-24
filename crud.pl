% Controle de Entidades (CRUD)

% Para o paciente ativo sendo triado:
:- dynamic sintoma/1.
:- dynamic sintoma_recusado/1.

% Create (Adicionar sintoma na triagem ativa)
adicionar_sintoma(S) :- \+ sintoma(S), assertz(sintoma(S)).
adicionar_sintoma(_) :- !.

listar_sintomas(Lista) :-
    findall(S, sintoma(S), Lista).

remover_sintoma(S) :-
    retract(sintoma(S)).
remover_sintoma(_) :- !.

% Excluir sintomas da triagem ativa
limpar_sintomas :-
    retractall(sintoma(_)),
    retractall(sintoma_recusado(_)).

tem_sintoma(S) :- sintoma(S).


% Banco de Pacientes Salvos
% paciente_salvo(Id, Nome, Sexo, Idade, Obs, Queixa, Cor, Hist)
:- dynamic paciente_salvo/8.
:- dynamic paciente_counter/1.
paciente_counter(1).

gerar_id(Id) :-
    retract(paciente_counter(Id)),
    Proximo is Id + 1,
    assertz(paciente_counter(Proximo)).

% CREATE / SAVE
salvar_paciente_atual(Nome, Sexo, Idade, Obs, Queixa, Cor) :-
    findall(S1, sintoma(S1), Confirmados),
    findall(S2, sintoma_recusado(S2), Recusados),
    Historico = [sim(Confirmados), nao(Recusados)],
    gerar_id(Id),
    assertz(paciente_salvo(Id, Nome, Sexo, Idade, Obs, Queixa, Cor, Historico)),
    format('Paciente salvo na base de dados com ID ~w.~n', [Id]).

% READ (Todos)
listar_pacientes :-
    findall(paciente_salvo(Id, N, S, I, O, Q, C, H), paciente_salvo(Id, N, S, I, O, Q, C, H), Lista),
    (Lista == [] -> writeln('Nenhum paciente cadastrado.') ; imprimir_lista_pacientes(Lista)).

imprimir_lista_pacientes([]).
imprimir_lista_pacientes([paciente_salvo(Id, Nome, Sexo, Idade, Obs, Queixa, Cor, _)|Resto]) :-
    format('[ID ~w] ~w | Sexo: ~w | Idade: ~w | Cor: ~w | Queixa: ~w | Obs: ~w~n', [Id, Nome, Sexo, Idade, Cor, Queixa, Obs]),
    imprimir_lista_pacientes(Resto).

% READ (Detalhado)
detalhar_paciente(Id) :-
    (   paciente_salvo(Id, Nome, Sexo, Idade, Obs, Queixa, Cor, [sim(Conf), nao(Rec)]) ->
        nl,
        writeln('--- DETALHES DO PACIENTE ---'),
        format('ID: ~w~nNome: ~w~nSexo: ~w~nIdade: ~w~nObservação: ~w~n', [Id, Nome, Sexo, Idade, Obs]),
        format('Queixa Principal: ~w~nClassificação: ~w~n', [Queixa, Cor]),
        writeln('Sintomas Confirmados (SIM):'), imprimir_itens(Conf),
        writeln('Sintomas Descartados (NÃO):'), imprimir_itens(Rec),
        writeln('----------------------------')
    ;   writeln('Paciente não encontrado.')
    ).

imprimir_itens([]).
imprimir_itens([H|T]) :- format('- ~w~n', [H]), imprimir_itens(T).

% UPDATE
atualizar_paciente(Id, NovoSexo, NovaIdade, NovaObs) :-
    (   retract(paciente_salvo(Id, Nome, _, _, _, Queixa, Cor, Hist)) ->
        assertz(paciente_salvo(Id, Nome, NovoSexo, NovaIdade, NovaObs, Queixa, Cor, Hist)),
        writeln('Paciente atualizado com sucesso.')
    ;   writeln('Paciente não encontrado.')
    ).

% DELETE
deletar_paciente(Id) :-
    (   retract(paciente_salvo(Id, _, _, _, _, _, _, _)) ->
        writeln('Paciente apagado com sucesso.')
    ;   writeln('Paciente não encontrado.')
    ).

% Excluir todos (Clear Base)
limpar_base_pacientes :-
    retractall(paciente_salvo(_,_,_,_,_,_,_,_)),
    retractall(paciente_counter(_)),
    assertz(paciente_counter(1)),
    writeln('Todos os pacientes foram limpos.').
