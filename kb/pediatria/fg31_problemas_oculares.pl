% =========================
% PROBLEMAS OCULARES
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(problemas_oculares, vermelho,
	[obstrucao_vias_aereas]).

regra(problemas_oculares, vermelho,
	[falencia_respiratoria]).

regra(problemas_oculares, vermelho,
	[sinais_de_choque]).

regra(problemas_oculares, vermelho,
	[lesao_ocular_quimica]).


% LARANJA
regra(problemas_oculares, laranja,
	[trauma_ocular_penetrante]).

regra(problemas_oculares, laranja,
	[perda_total_visao_aguda]).

regra(problemas_oculares, laranja,
	[diplopia]).

regra(problemas_oculares, laranja,
	[dor_intensa]).


% AMARELO
regra(problemas_oculares, amarelo,
	[reducao_recente_acuidade_visual]).

regra(problemas_oculares, amarelo,
	[historia_discordante]).

regra(problemas_oculares, amarelo,
	[celulite_periorbitaria]).

regra(problemas_oculares, amarelo,
	[dor_moderada]).


% VERDE
regra(problemas_oculares, verde,
	[olho_vermelho]).

regra(problemas_oculares, verde,
	[sensacao_de_corpo_estranho]).

regra(problemas_oculares, verde,
	[dor_leve_recente]).

regra(problemas_oculares, verde,
	[evento_recente]).
