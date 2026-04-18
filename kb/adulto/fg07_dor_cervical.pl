% =========================
% DOR CERVICAL
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(dor_cervical, vermelho,
	[respiracao_inadequada]).

regra(dor_cervical, vermelho,
	[sinais_de_choque]).

regra(dor_cervical, vermelho,
	[obstrucao_vias_aereas]).

regra(dor_cervical, vermelho,
	[sinais_neurologicos_focais]).

regra(dor_cervical, vermelho,
	[manifestacoes_hemorragicas]).


% LARANJA
regra(dor_cervical, laranja,
	[alteracao_nivel_consciencia_ecg_9_13]).

regra(dor_cervical, laranja,
	[sinais_de_meningismo]).

regra(dor_cervical, laranja,
	[dor_intensa]).

regra(dor_cervical, laranja,
	[alteracao_temperatura_maior_40]).

regra(dor_cervical, laranja,
	[trauma_direto_pescoco]).


% AMARELO
regra(dor_cervical, amarelo,
	[dor_moderada]).


% VERDE
regra(dor_cervical, verde,
	[evento_recente_menos_7_dias]).

regra(dor_cervical, verde,
	[dor_leve]).
