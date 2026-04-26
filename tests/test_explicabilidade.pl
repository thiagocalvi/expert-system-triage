% Testes: Explicabilidade (explicabilidade.pl)

:- use_module(library(plunit)).

:- consult('../kb/cores.pl').
:- consult('../crud.pl').
:- consult('../engine.pl').
:- consult('../explicabilidade.pl').

:- dynamic regra/3.
:- dynamic sintoma/1.

% -------------------------------------------------------
:- begin_tests(por_que).
% -------------------------------------------------------

% Quando todos discriminadores estão presentes, retorna a lista completa
test(retorna_discriminadores_presentes,
    [setup((assertz(regra(texp_pq1, vermelho, [da_pq1, db_pq1])),
            assertz(sintoma(da_pq1)),
            assertz(sintoma(db_pq1)))),
     cleanup((retractall(regra(texp_pq1,_,_)),
              retract(sintoma(da_pq1)),
              retract(sintoma(db_pq1))))]) :-
    por_que(texp_pq1, vermelho, Disc),
    Disc = [da_pq1, db_pq1].

% Regra sem discriminadores: por_que retorna lista vazia
test(regra_sem_discriminadores,
    [setup(assertz(regra(texp_pq2, azul, []))),
     cleanup(retractall(regra(texp_pq2,_,_)))]) :-
    por_que(texp_pq2, azul, Disc),
    Disc = [].

% Se falta um discriminador, por_que falha
test(falha_se_falta_discriminador,
    [fail,
     setup((assertz(regra(texp_pq3, amarelo, [dx_pq3, dy_pq3])),
            assertz(sintoma(dx_pq3)))),
     cleanup((retractall(regra(texp_pq3,_,_)),
              retract(sintoma(dx_pq3))))]) :-
    por_que(texp_pq3, amarelo, _).

:- end_tests(por_que).


% -------------------------------------------------------
:- begin_tests(por_que_nao).
% -------------------------------------------------------

% Retorna apenas os discriminadores ausentes
test(retorna_faltante,
    [setup((assertz(regra(texp_pqn1, laranja, [dp_pqn1, dq_pqn1])),
            assertz(sintoma(dp_pqn1)))),  % dq_pqn1 ausente
     cleanup((retractall(regra(texp_pqn1,_,_)),
              retract(sintoma(dp_pqn1))))]) :-
    por_que_nao(texp_pqn1, laranja, Faltantes),
    Faltantes = [dq_pqn1].

% Quando todos presentes → lista vazia
test(vazio_quando_todos_presentes,
    [setup((assertz(regra(texp_pqn2, vermelho, [dr_pqn2])),
            assertz(sintoma(dr_pqn2)))),
     cleanup((retractall(regra(texp_pqn2,_,_)),
              retract(sintoma(dr_pqn2))))]) :-
    por_que_nao(texp_pqn2, vermelho, Faltantes),
    Faltantes = [].

% Quando nenhum presente → retorna todos
test(todos_quando_nenhum_presente,
    [setup(assertz(regra(texp_pqn3, amarelo, [ds_pqn3, dt_pqn3]))),
     cleanup(retractall(regra(texp_pqn3,_,_)))]) :-
    por_que_nao(texp_pqn3, amarelo, Faltantes),
    msort(Faltantes, Sorted),
    msort([ds_pqn3, dt_pqn3], Expected),
    Sorted = Expected.

:- end_tests(por_que_nao).
