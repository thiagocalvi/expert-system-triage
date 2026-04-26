% =========================
% DOR DE CABEÇA
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(dor_de_cabeca, vermelho,
	[estado_mental_alterado]).

regra(dor_de_cabeca, vermelho,
	[convulsao_em_atividade]).

regra(dor_de_cabeca, vermelho,
	[sinais_neurologicos_focais]).

regra(dor_de_cabeca, vermelho,
	[sinais_de_meningismo]).

regra(dor_de_cabeca, vermelho,
	[sinais_de_choque]).

regra(dor_de_cabeca, vermelho,
	[cefaleia_intensa_inicio_subito]).

regra(dor_de_cabeca, vermelho,
	[perda_aguda_completa_visao]).


% LARANJA
regra(dor_de_cabeca, laranja,
	[dor_intensa]).


% AMARELO
regra(dor_de_cabeca, amarelo,
	[historia_inconsciencia]).

regra(dor_de_cabeca, amarelo,
	[dor_moderada]).

regra(dor_de_cabeca, amarelo,
	[alteracao_temperatura_maior_38_5]).

regra(dor_de_cabeca, amarelo,
	[nauseas_vomitos_associados_dor]).

regra(dor_de_cabeca, amarelo,
	[diminuicao_recente_visao]).


% VERDE
regra(dor_de_cabeca, verde,
	[evento_recente_menos_7_dias]).

regra(dor_de_cabeca, verde,
	[dor_leve]).
