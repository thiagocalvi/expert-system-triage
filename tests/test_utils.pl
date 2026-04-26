% Utilitários de Teste

% Helpers de setup/teardown usados pelos demais módulos de teste.

:- module(test_utils, [
    setup_sintomas/1,
    setup_regras/1,
    teardown_sintomas/0,
    teardown_regras/0,
    teardown_all/0
]).

% Declara sintoma/1 e regra/3 como dinâmicos neste escopo
:- dynamic sintoma/1.
:- dynamic regra/3.

% setup_sintomas(+Lista)
% Assertz cada sintoma da lista no banco de dados.
setup_sintomas([]).
setup_sintomas([S|Resto]) :-
    (   \+ sintoma(S)
    ->  assertz(sintoma(S))
    ;   true
    ),
    setup_sintomas(Resto).

% setup_regras(+Lista)
% Assertz cada regra(Q, C, Disc) na lista.
setup_regras([]).
setup_regras([regra(Q, C, D)|Resto]) :-
    (   \+ regra(Q, C, D)
    ->  assertz(regra(Q, C, D))
    ;   true
    ),
    setup_regras(Resto).

% teardown_sintomas/0
% Remove todos os sintomas da sessão de teste.
teardown_sintomas :-
    retractall(sintoma(_)).

% teardown_regras/0
% Remove todas as regras da sessão de teste.
teardown_regras :-
    retractall(regra(_, _, _)).

% teardown_all/0
% Remove todos os fatos dinâmicos de teste.
teardown_all :-
    teardown_sintomas,
    teardown_regras.
