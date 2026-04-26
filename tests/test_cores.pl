% Testes: Probabilidades / Prioridades (kb/cores.pl)

:- use_module(library(plunit)).

:- consult('../kb/cores.pl').

% -------------------------------------------------------
:- begin_tests(prioridade).
% -------------------------------------------------------

% Prioridades numéricas definidas: vermelho=1, laranja=2, amarelo=3, verde=4, azul=5

test(vermelho_prioridade_1) :-
    prioridade(pediatria, vermelho, 1).

test(laranja_prioridade_2) :-
    prioridade(pediatria, laranja, 2).

test(amarelo_prioridade_3) :-
    prioridade(pediatria, amarelo, 3).

test(verde_prioridade_4) :-
    prioridade(pediatria, verde, 4).

test(azul_prioridade_5) :-
    prioridade(pediatria, azul, 5).

% Adulto também tem 5 cores com as mesmas prioridades
test(adulto_vermelho_prioridade_1) :-
    prioridade(adulto, vermelho, 1).

test(adulto_azul_prioridade_5) :-
    prioridade(adulto, azul, 5).

:- end_tests(prioridade).


% -------------------------------------------------------
:- begin_tests(mais_grave).
% -------------------------------------------------------

% mais_grave(Pop, Cor1, Cor2): Cor1 < Cor2 em prioridade (mais urgente)

test(vermelho_mais_grave_que_laranja) :-
    mais_grave(pediatria, vermelho, laranja).

test(laranja_mais_grave_que_amarelo) :-
    mais_grave(pediatria, laranja, amarelo).

test(amarelo_mais_grave_que_verde) :-
    mais_grave(pediatria, amarelo, verde).

test(verde_mais_grave_que_azul) :-
    mais_grave(pediatria, verde, azul).

test(vermelho_mais_grave_que_azul) :-
    mais_grave(pediatria, vermelho, azul).

% Inverso falha
test(azul_nao_mais_grave_que_vermelho, [fail]) :-
    mais_grave(pediatria, azul, vermelho).

test(laranja_nao_mais_grave_que_vermelho, [fail]) :-
    mais_grave(pediatria, laranja, vermelho).

% Mesma cor: não é "mais grave"
test(vermelho_nao_mais_grave_que_si_mesmo, [fail]) :-
    mais_grave(pediatria, vermelho, vermelho).

:- end_tests(mais_grave).


% -------------------------------------------------------
:- begin_tests(tempo_atendimento).
% -------------------------------------------------------

% Tempos definidos em cores.pl:
% vermelho=0min, laranja=10min, amarelo=60min, verde=120min, azul=120min (ped) / 240min (adult)

test(pediatria_vermelho_tempo_0) :-
    tempo_atendimento(pediatria, vermelho, 0).

test(pediatria_laranja_tempo_10) :-
    tempo_atendimento(pediatria, laranja, 10).

test(pediatria_amarelo_tempo_60) :-
    tempo_atendimento(pediatria, amarelo, 60).

test(pediatria_verde_tempo_120) :-
    tempo_atendimento(pediatria, verde, 120).

test(pediatria_azul_tempo_120) :-
    tempo_atendimento(pediatria, azul, 120).

test(adulto_vermelho_tempo_0) :-
    tempo_atendimento(adulto, vermelho, 0).

test(adulto_amarelo_tempo_60) :-
    tempo_atendimento(adulto, amarelo, 60).

test(adulto_azul_tempo_240) :-
    tempo_atendimento(adulto, azul, 240).

:- end_tests(tempo_atendimento).


% -------------------------------------------------------
:- begin_tests(todas_cores).
% -------------------------------------------------------

test(pediatria_tem_5_cores) :-
    todas_cores(pediatria, Lista),
    length(Lista, 5).

test(adulto_tem_5_cores) :-
    todas_cores(adulto, Lista),
    length(Lista, 5).

test(pediatria_contem_vermelho) :-
    todas_cores(pediatria, Lista),
    memberchk(vermelho, Lista).

test(pediatria_contem_azul) :-
    todas_cores(pediatria, Lista),
    memberchk(azul, Lista).

test(adulto_contem_laranja) :-
    todas_cores(adulto, Lista),
    memberchk(laranja, Lista).

:- end_tests(todas_cores).


% -------------------------------------------------------
:- begin_tests(mensagem_cor).
% -------------------------------------------------------

test(mensagem_cor_retorna_atomo_pediatria) :-
    mensagem_cor(pediatria, vermelho, Msg),
    atom(Msg).

test(mensagem_cor_contem_tempo_pediatria) :-
    mensagem_cor(pediatria, laranja, Msg),
    sub_atom(Msg, _, _, _, '10').

test(mensagem_cor_retorna_atomo_adulto) :-
    mensagem_cor(adulto, azul, Msg),
    atom(Msg).

test(mensagem_cor_contem_cor_no_texto) :-
    mensagem_cor(pediatria, amarelo, Msg),
    sub_atom(Msg, _, _, _, amarelo).

:- end_tests(mensagem_cor).
