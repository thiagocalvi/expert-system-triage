% =========================
% Runner Geral de Testes
% =========================
% Executar a partir da raiz do projeto:
%   swipl -g "run_tests" -t halt tests/run_all.pl < /dev/null

:- use_module(library(plunit)).

% Garante que os testes não esperem input (evita travamentos em "choicepoint")
:- set_test_options([interactive(false)]).

% Carrega todos os módulos de teste
:- consult('test_engine.pl').
:- consult('test_explicabilidade.pl').
:- consult('test_crud.pl').
:- consult('test_cores.pl').
