% =========================
% QUEIXAS URINÁRIAS
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(queixas_urinarias, vermelho,
	[sinais_de_choque]).

regra(queixas_urinarias, vermelho,
	[hemorragia_grave]).

regra(queixas_urinarias, vermelho,
	[hematuria_grave]).


% LARANJA
regra(queixas_urinarias, laranja,
	[prostacao_palidez_sudorese]).

regra(queixas_urinarias, laranja,
	[priapismo]).

regra(queixas_urinarias, laranja,
	[dor_intensa]).


% AMARELO
regra(queixas_urinarias, amarelo,
	[colicas]).

regra(queixas_urinarias, amarelo,
	[hematuria_fraca]).

regra(queixas_urinarias, amarelo,
	[retencao_urinaria]).

regra(queixas_urinarias, amarelo,
	[vomitos_persistentes]).

regra(queixas_urinarias, amarelo,
	[dor_moderada]).


% VERDE
regra(queixas_urinarias, verde,
	[vomitos_sem_desidratacao]).

regra(queixas_urinarias, verde,
	[disuria]).

regra(queixas_urinarias, verde,
	[dor_leve_recente]).

regra(queixas_urinarias, verde,
	[evento_recente]).


% AZUL
regra(queixas_urinarias, azul,
	[dor_superficial_cronica_compressao]).
