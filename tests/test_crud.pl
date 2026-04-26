% =========================
% Testes: CRUD (crud.pl)
% =========================

:- use_module(library(plunit)).

:- consult('../crud.pl').

% Helper: reseta o banco de pacientes e o contador
reset_base :-
    retractall(paciente_salvo(_, _, _, _, _, _, _, _)),
    retractall(paciente_counter(_)),
    assertz(paciente_counter(1)).

% -------------------------------------------------------
:- begin_tests(crud_sintomas).
% -------------------------------------------------------

test(adicionar_sintoma_novo,
    [setup(limpar_sintomas), cleanup(limpar_sintomas)]) :-
    adicionar_sintoma(febre_cs),
    sintoma(febre_cs).

test(adicionar_sintoma_idempotente,
    [setup(limpar_sintomas), cleanup(limpar_sintomas)]) :-
    adicionar_sintoma(febre_cs2),
    adicionar_sintoma(febre_cs2),
    findall(S, sintoma(S), Lista),
    Lista = [febre_cs2].

test(remover_sintoma_existente,
    [setup((limpar_sintomas, assertz(sintoma(tosse_cs)))),
     cleanup(limpar_sintomas)]) :-
    remover_sintoma(tosse_cs),
    \+ sintoma(tosse_cs).

test(remover_sintoma_inexistente_nao_falha,
    [setup(limpar_sintomas), cleanup(limpar_sintomas)]) :-
    remover_sintoma(sintoma_nao_existe_cs).

test(listar_sintomas_corretos,
    [setup((limpar_sintomas,
            assertz(sintoma(febre_cs3)),
            assertz(sintoma(tosse_cs3)))),
     cleanup(limpar_sintomas)]) :-
    listar_sintomas(Lista),
    msort(Lista, Sorted),
    Sorted = [febre_cs3, tosse_cs3].

test(listar_sintomas_vazio,
    [setup(limpar_sintomas), cleanup(limpar_sintomas)]) :-
    listar_sintomas([]).

test(tem_sintoma_verdadeiro,
    [setup((limpar_sintomas, assertz(sintoma(dor_cs)))),
     cleanup(limpar_sintomas)]) :-
    tem_sintoma(dor_cs).

test(tem_sintoma_falso,
    [fail, setup(limpar_sintomas), cleanup(limpar_sintomas)]) :-
    tem_sintoma(sintoma_ausente_cs).

test(limpar_sintomas_remove_tudo,
    [setup((assertz(sintoma(febre_cs4)), assertz(sintoma(tosse_cs4)))),
     cleanup(limpar_sintomas)]) :-
    limpar_sintomas,
    \+ sintoma(_).

:- end_tests(crud_sintomas).


% -------------------------------------------------------
:- begin_tests(crud_pacientes).
% -------------------------------------------------------

test(salvar_paciente_e_verificar,
    [setup((limpar_sintomas, reset_base)),
     cleanup((limpar_sintomas, reset_base))]) :-
    salvar_paciente_atual('Maria', feminino, 30, 'Obs', dor_cabeca, amarelo),
    % Verifica que existe algum paciente salvo com os dados corretos
    paciente_salvo(_, 'Maria', feminino, 30, 'Obs', dor_cabeca, amarelo, _).

test(dois_pacientes_ids_distintos,
    [setup((limpar_sintomas, reset_base)),
     cleanup((limpar_sintomas, reset_base))]) :-
    salvar_paciente_atual('Carlos', masculino, 45, '', febre, laranja),
    salvar_paciente_atual('Ana',    feminino,  22, '', tosse, verde),
    findall(Id, paciente_salvo(Id, _, _, _, _, _, _, _), Ids),
    length(Ids, 2),
    Ids = [Id1, Id2],
    Id1 \= Id2.

test(detalhar_paciente_existente,
    [setup((limpar_sintomas, reset_base)),
     cleanup((limpar_sintomas, reset_base))]) :-
    salvar_paciente_atual('Lucas', masculino, 10, '', dor, vermelho),
    findall(Id, paciente_salvo(Id, 'Lucas', _, _, _, _, _, _), [Id|_]),
    detalhar_paciente(Id).   % não deve falhar

test(detalhar_paciente_inexistente_nao_falha,
    [setup(reset_base), cleanup(reset_base)]) :-
    detalhar_paciente(9999).

test(atualizar_paciente,
    [setup((limpar_sintomas, reset_base)),
     cleanup((limpar_sintomas, reset_base))]) :-
    salvar_paciente_atual('Pedro', masculino, 20, 'antes', queixa_x, azul),
    findall(Id, paciente_salvo(Id, 'Pedro', _, _, _, _, _, _), [Id|_]),
    atualizar_paciente(Id, feminino, 21, 'depois'),
    paciente_salvo(Id, 'Pedro', feminino, 21, 'depois', queixa_x, azul, _).

test(deletar_paciente_existente,
    [setup((limpar_sintomas, reset_base)),
     cleanup((limpar_sintomas, reset_base))]) :-
    salvar_paciente_atual('Joao', masculino, 55, '', dor, vermelho),
    findall(Id, paciente_salvo(Id, 'Joao', _, _, _, _, _, _), [Id|_]),
    deletar_paciente(Id),
    \+ paciente_salvo(Id, _, _, _, _, _, _, _).

test(deletar_paciente_inexistente_nao_falha,
    [setup(reset_base), cleanup(reset_base)]) :-
    deletar_paciente(9999).

test(limpar_base_zera_contador,
    [setup((limpar_sintomas, reset_base)),
     cleanup((limpar_sintomas, reset_base))]) :-
    salvar_paciente_atual('Test', masculino, 1, '', t, azul),
    limpar_base_pacientes,
    \+ paciente_salvo(_, _, _, _, _, _, _, _),
    paciente_counter(1).

:- end_tests(crud_pacientes).
