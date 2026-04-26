% Testes: Explicabilidade (explicabilidade.pl)

:- use_module(library(plunit)).

:- consult('../kb/cores.pl').
:- consult('../crud.pl').
:- consult('../engine.pl').
:- consult('../explicabilidade.pl').

% -------------------------------------------------------
:- begin_tests(por_que).
% -------------------------------------------------------

test(retorna_discriminadores_presentes,
    [setup((assertz(user:regra(texp_pq1, vermelho, [da_pq1, db_pq1])),
            assertz(user:sintoma(da_pq1)),
            assertz(user:sintoma(db_pq1)))),
     cleanup((retractall(user:regra(texp_pq1,_,_)),
              retract(user:sintoma(da_pq1)),
              retract(user:sintoma(db_pq1))))]) :-
    por_que(texp_pq1, vermelho, Disc),
    Disc = [da_pq1, db_pq1].

test(regra_sem_discriminadores,
    [setup(assertz(user:regra(texp_pq2, azul, []))),
     cleanup(retractall(user:regra(texp_pq2,_,_)))]) :-
    por_que(texp_pq2, azul, Disc),
    Disc = [].

test(falha_se_falta_discriminador,
    [fail,
     setup((assertz(user:regra(texp_pq3, amarelo, [dx_pq3, dy_pq3])),
            assertz(user:sintoma(dx_pq3)))),
     cleanup((retractall(user:regra(texp_pq3,_,_)),
              retract(user:sintoma(dx_pq3))))]) :-
    por_que(texp_pq3, amarelo, _).

:- end_tests(por_que).


% -------------------------------------------------------
:- begin_tests(por_que_nao).
% -------------------------------------------------------

test(retorna_faltante,
    [setup((assertz(user:regra(texp_pqn1, laranja, [dp_pqn1, dq_pqn1])),
            assertz(user:sintoma(dp_pqn1)))),
     cleanup((retractall(user:regra(texp_pqn1,_,_)),
              retract(user:sintoma(dp_pqn1))))]) :-
    por_que_nao(texp_pqn1, laranja, Faltantes),
    Faltantes = [dq_pqn1].

test(vazio_quando_todos_presentes,
    [setup((assertz(user:regra(texp_pqn2, vermelho, [dr_pqn2])),
            assertz(user:sintoma(dr_pqn2)))),
     cleanup((retractall(user:regra(texp_pqn2,_,_)),
              retract(user:sintoma(dr_pqn2))))]) :-
    por_que_nao(texp_pqn2, vermelho, Faltantes),
    Faltantes = [].

test(todos_quando_nenhum_presente,
    [setup(assertz(user:regra(texp_pqn3, amarelo, [ds_pqn3, dt_pqn3]))),
     cleanup(retractall(user:regra(texp_pqn3,_,_)))]) :-
    por_que_nao(texp_pqn3, amarelo, Faltantes),
    msort(Faltantes, Sorted),
    msort([ds_pqn3, dt_pqn3], Expected),
    Sorted = Expected.

:- end_tests(por_que_nao).