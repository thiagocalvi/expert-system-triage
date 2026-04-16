% =========================
% PROBLEMAS OTOLÓGICOS
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(problemas_otologicos, vermelho,
	[sinais_de_choque]).

regra(problemas_otologicos, vermelho,
	[alteracao_subita_nivel_de_consciencia]).

regra(problemas_otologicos, vermelho,
	[hemorragia_auricular_visivel]).


% LARANJA
regra(problemas_otologicos, laranja,
	[inconsolavel_pelos_pais]).

regra(problemas_otologicos, laranja,
	[sinais_de_meningismo]).

regra(problemas_otologicos, laranja,
	[alteracoes_sensoriais_comportamento]).

regra(problemas_otologicos, laranja,
	[dor_intensa]).


% AMARELO
regra(problemas_otologicos, amarelo,
	[tumefacao_dolorosa_retroauricular]).

regra(problemas_otologicos, amarelo,
	[nao_se_alimenta]).

regra(problemas_otologicos, amarelo,
	[historia_trauma_craniano_recente]).

regra(problemas_otologicos, amarelo,
	[vertigem]).

regra(problemas_otologicos, amarelo,
	[vomitos_persistentes]).

regra(problemas_otologicos, amarelo,
	[historia_discordante]).

regra(problemas_otologicos, amarelo,
	[dor_moderada]).


% VERDE
regra(problemas_otologicos, verde,
	[perda_recente_audicao]).

regra(problemas_otologicos, verde,
	[otorreia]).

regra(problemas_otologicos, verde,
	[dor_leve_recente]).

regra(problemas_otologicos, verde,
	[evento_recente]).
