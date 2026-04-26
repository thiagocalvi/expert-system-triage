% =========================
% Testes: Motor de Inferência (engine.pl)
% =========================

:- use_module(library(plunit)).

% Carrega apenas o necessário (sem discriminadores.pl para velocidade)
:- consult('../kb/cores.pl').
:- consult('../crud.pl').
:- consult('../engine.pl').

:- dynamic regra/3.
:- dynamic sintoma/1.

% -------------------------------------------------------
:- begin_tests(sintomas_presentes).
% -------------------------------------------------------

test(lista_vazia_sempre_verdadeiro) :-
    sintomas_presentes([]).

test(um_sintoma_presente,
    [setup(assertz(sintoma(febre_t1))),
     cleanup(retract(sintoma(febre_t1)))]) :-
    sintomas_presentes([febre_t1]).

test(multiplos_presentes,
    [setup((assertz(sintoma(febre_t2)), assertz(sintoma(tosse_t2)))),
     cleanup((retract(sintoma(febre_t2)), retract(sintoma(tosse_t2))))]) :-
    sintomas_presentes([febre_t2, tosse_t2]).

test(falta_um_falha,
    [fail,
     setup(assertz(sintoma(febre_t3))),
     cleanup(retract(sintoma(febre_t3)))]) :-
    sintomas_presentes([febre_t3, ausente_xyz_t3]).

:- end_tests(sintomas_presentes).


% -------------------------------------------------------
:- begin_tests(avalia_queixa).
% -------------------------------------------------------

setup_regras_avalia :-
    assertz(regra(tq_engine, vermelho, [s_verm_e])),
    assertz(regra(tq_engine, laranja,  [s_lara_e])),
    assertz(regra(tq_engine, amarelo,  [s_amar_e])),
    assertz(regra(tq_engine, verde,    [s_verd_e])),
    assertz(regra(tq_engine, azul,     [s_azul_e])).

teardown_avalia :-
    retractall(regra(tq_engine, _, _)),
    retractall(sintoma(s_verm_e)),
    retractall(sintoma(s_lara_e)),
    retractall(sintoma(s_amar_e)),
    retractall(sintoma(s_verd_e)),
    retractall(sintoma(s_azul_e)).

test(avalia_vermelho,
    [setup((setup_regras_avalia, assertz(sintoma(s_verm_e)))),
     cleanup(teardown_avalia)]) :-
    avalia_queixa(tq_engine, vermelho).

test(avalia_laranja,
    [setup((setup_regras_avalia, assertz(sintoma(s_lara_e)))),
     cleanup(teardown_avalia)]) :-
    avalia_queixa(tq_engine, laranja).

test(avalia_amarelo,
    [setup((setup_regras_avalia, assertz(sintoma(s_amar_e)))),
     cleanup(teardown_avalia)]) :-
    avalia_queixa(tq_engine, amarelo).

test(avalia_verde,
    [setup((setup_regras_avalia, assertz(sintoma(s_verd_e)))),
     cleanup(teardown_avalia)]) :-
    avalia_queixa(tq_engine, verde).

test(avalia_azul_explicito,
    [setup((setup_regras_avalia, assertz(sintoma(s_azul_e)))),
     cleanup(teardown_avalia)]) :-
    avalia_queixa(tq_engine, azul).

% Sem sintomas → fallback para azul
test(sem_sintomas_retorna_azul,
    [setup(setup_regras_avalia),
     cleanup(teardown_avalia)]) :-
    avalia_queixa(tq_engine, azul).

% Prioridade: vermelho ganha sobre laranja
test(prioridade_vermelho_sobre_laranja,
    [setup((setup_regras_avalia,
            assertz(sintoma(s_verm_e)),
            assertz(sintoma(s_lara_e)))),
     cleanup(teardown_avalia)]) :-
    avalia_queixa(tq_engine, vermelho).

:- end_tests(avalia_queixa).


% -------------------------------------------------------
:- begin_tests(todas_queixas).
% -------------------------------------------------------

test(retorna_lista_nao_vazia,
    [setup((assertz(regra(qa_tq, vermelho, [qx1])),
            assertz(regra(qb_tq, azul,    [qx2])))),
     cleanup((retractall(regra(qa_tq,_,_)),
              retractall(regra(qb_tq,_,_))))]) :-
    todas_queixas(Lista),
    Lista \= [].

test(contem_queixas_inseridas,
    [setup((assertz(regra(qa2_tq, laranja, [qx3])),
            assertz(regra(qb2_tq, verde,   [qx4])))),
     cleanup((retractall(regra(qa2_tq,_,_)),
              retractall(regra(qb2_tq,_,_))))]) :-
    todas_queixas(Lista),
    memberchk(qa2_tq, Lista),
    memberchk(qb2_tq, Lista).

:- end_tests(todas_queixas).
