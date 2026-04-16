% =========================
% PROBLEMAS / DOR EM EXTREMIDADES
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(problemas_dor_em_extremidades, vermelho,
	[obstrucao_vias_aereas]).

regra(problemas_dor_em_extremidades, vermelho,
	[falencia_respiratoria]).

regra(problemas_dor_em_extremidades, vermelho,
	[sinais_de_choque]).

regra(problemas_dor_em_extremidades, vermelho,
	[hemorragia_grave]).


% LARANJA
regra(problemas_dor_em_extremidades, laranja,
	[dispneia_aguda]).

regra(problemas_dor_em_extremidades, laranja,
	[pele_critica]).

regra(problemas_dor_em_extremidades, laranja,
	[comprometimento_vascular_distal]).

regra(problemas_dor_em_extremidades, laranja,
	[hemorragia_menor_incontrolavel]).

regra(problemas_dor_em_extremidades, laranja,
	[dor_intensa]).


% AMARELO
regra(problemas_dor_em_extremidades, amarelo,
	[dor_pleuritica]).

regra(problemas_dor_em_extremidades, amarelo,
	[deformidade_grosseira]).

regra(problemas_dor_em_extremidades, amarelo,
	[fratura_exposta]).

regra(problemas_dor_em_extremidades, amarelo,
	[dor_panturrilhas_prejuizo_marcha]).

regra(problemas_dor_em_extremidades, amarelo,
	[hemorragia_menor_incontrolavel]).

regra(problemas_dor_em_extremidades, amarelo,
	[deficit_neurologico_novo]).

regra(problemas_dor_em_extremidades, amarelo,
	[disturbio_coagulacao]).

regra(problemas_dor_em_extremidades, amarelo,
	[historia_discordante]).

regra(problemas_dor_em_extremidades, amarelo,
	[artralgia_com_limitacao_sinais_flogisticos]).


% VERDE
regra(problemas_dor_em_extremidades, verde,
	[deformidade]).

regra(problemas_dor_em_extremidades, verde,
	[edema]).

regra(problemas_dor_em_extremidades, verde,
	[dor_leve_recente]).

regra(problemas_dor_em_extremidades, verde,
	[evento_recente]).

regra(problemas_dor_em_extremidades, verde,
	[artralgia_sem_sinais_flogisticos]).


% AZUL
regra(problemas_dor_em_extremidades, azul,
	[dor_superficial_cronica_compressao]).
