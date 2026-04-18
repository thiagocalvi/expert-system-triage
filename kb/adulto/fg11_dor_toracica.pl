% =========================
% DOR TORÁCICA
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(dor_toracica, vermelho,
	[respiracao_inadequada]).

regra(dor_toracica, vermelho,
	[dor_precordial]).

regra(dor_toracica, vermelho,
	[sinais_de_choque_fc_150]).

regra(dor_toracica, vermelho,
	[trauma_penetrante]).


% LARANJA
regra(dor_toracica, laranja,
	[dor_intensa]).

regra(dor_toracica, laranja,
	[hemoptise_ativa]).

regra(dor_toracica, laranja,
	[trauma_toracico_com_dispneia]).

regra(dor_toracica, laranja,
	[pulso_filiforme]).


% AMARELO
regra(dor_toracica, amarelo,
	[historia_cardiaca_importante]).

regra(dor_toracica, amarelo,
	[dor_moderada]).

regra(dor_toracica, amarelo,
	[dor_pleuritica]).

regra(dor_toracica, amarelo,
	[epistaxe]).

regra(dor_toracica, amarelo,
	[vomitos_persistentes]).


% VERDE
regra(dor_toracica, verde,
	[dor_leve]).

regra(dor_toracica, verde,
	[piora_ao_movimento]).

regra(dor_toracica, verde,
	[dificuldade_para_deglutir]).

regra(dor_toracica, verde,
	[tosse_produtiva]).
