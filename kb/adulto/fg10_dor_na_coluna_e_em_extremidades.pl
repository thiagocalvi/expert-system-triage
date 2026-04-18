% =========================
% DOR NA COLUNA E EM EXTREMIDADES
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(dor_na_coluna_e_em_extremidades, vermelho,
	[obstrucao_vias_aereas]).

regra(dor_na_coluna_e_em_extremidades, vermelho,
	[sinais_neurologicos_focais]).

regra(dor_na_coluna_e_em_extremidades, vermelho,
	[sinais_de_choque_fc_150]).

regra(dor_na_coluna_e_em_extremidades, vermelho,
	[sinais_de_isquemia]).


% LARANJA
regra(dor_na_coluna_e_em_extremidades, laranja,
	[sinais_flogisticos_ou_drenagem_articulacao]).

regra(dor_na_coluna_e_em_extremidades, laranja,
	[dor_intensa]).

regra(dor_na_coluna_e_em_extremidades, laranja,
	[alteracao_temperatura]).

regra(dor_na_coluna_e_em_extremidades, laranja,
	[comprometimento_vascular_distal]).

regra(dor_na_coluna_e_em_extremidades, laranja,
	[grave_mecanismo_de_trauma]).


% AMARELO
regra(dor_na_coluna_e_em_extremidades, amarelo,
	[dor_moderada]).

regra(dor_na_coluna_e_em_extremidades, amarelo,
	[dificuldade_de_andar]).

regra(dor_na_coluna_e_em_extremidades, amarelo,
	[sem_sinais_de_isquemia]).

regra(dor_na_coluna_e_em_extremidades, amarelo,
	[sinais_flogisticos_locais_nao_articulares]).

regra(dor_na_coluna_e_em_extremidades, amarelo,
	[limitacao_movimentos_funcao]).


% VERDE
regra(dor_na_coluna_e_em_extremidades, verde,
	[dor_leve]).

regra(dor_na_coluna_e_em_extremidades, verde,
	[edema_articular_sem_flogose]).

regra(dor_na_coluna_e_em_extremidades, verde,
	[evento_recente_menos_7_dias]).

regra(dor_na_coluna_e_em_extremidades, verde,
	[limitacao_leve_movimentos_sem_perda_funcao]).
