% Dependências e configurações
:- set_prolog_flag(encoding, utf8).
:- dynamic sintoma/1.

% Carrega a base de dados
:- ['kb/cores.pl'].
:- ['kb/discriminadores.pl'].

:- dynamic regra/3.
:- multifile regra/3.

% Carregar dinamicamente com base na População selecionada
carregar_kb(Pop) :-
    retractall(regra(_, _, _)),
    format(atom(Caminho), 'kb/~w/*.pl', [Pop]),
    expand_file_name(Caminho, Arquivos),
    maplist(consult, Arquivos).

% Carrega os módulos do projeto
:- ['crud.pl'].
:- ['engine.pl'].
:- ['explicabilidade.pl'].
:- ['interface.pl'].


% Ponto de entrada do sistema
iniciar :-
    menu_principal.
