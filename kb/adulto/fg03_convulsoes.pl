% =========================
% CONVULSÕES
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(convulsoes, vermelho,
	[convulsao_em_atividade]).

regra(convulsoes, vermelho,
	[obstrucao_vias_aereas]).

regra(convulsoes, vermelho,
	[alteracoes_glicemicas]).

regra(convulsoes, vermelho,
	[respiracao_inadequada]).

regra(convulsoes, vermelho,
	[sinais_neurologicos_focais]).

regra(convulsoes, vermelho,
	[crise_convulsiva_recorrente_reentrante]).

regra(convulsoes, vermelho,
	[sinais_de_meningismo]).


% LARANJA
regra(convulsoes, laranja,
	[historia_overdose_envenenamento]).

regra(convulsoes, laranja,
	[historia_trauma_craniano_recente]).


% AMARELO
regra(convulsoes, amarelo,
	[periodo_pos_comicial]).

regra(convulsoes, amarelo,
	[historia_epilepsia_em_tratamento]).

regra(convulsoes, amarelo,
	[crise_convulsiva_menos_12h_paciente_alerta]).


% VERDE
regra(convulsoes, verde,
	[nenhum_determinante_convulsoes]).
