% =========================
% SANGRAMENTOS
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(sangramentos, vermelho,
	[sinais_de_choque]).

regra(sangramentos, vermelho,
	[falencia_respiratoria]).

regra(sangramentos, vermelho,
	[hemorragia_exsanguinante]).

regra(sangramentos, vermelho,
	[disturbio_coagulacao]).

regra(sangramentos, vermelho,
	[hematuria_grave]).


% LARANJA
regra(sangramentos, laranja,
	[epistaxe_sem_controle_tamponamento]).

regra(sangramentos, laranja,
	[evacuacao_sangue_vivo_ou_alterado]).

regra(sangramentos, laranja,
	[hematese]).

regra(sangramentos, laranja,
	[alteracao_subita_nivel_de_consciencia]).


% AMARELO
regra(sangramentos, amarelo,
	[melena_ou_groselha]).

regra(sangramentos, amarelo,
	[vomitos_persistentes]).


% VERDE
regra(sangramentos, verde,
	[relato_de_epistaxes]).

regra(sangramentos, verde,
	[relato_de_hemorroidas]).

regra(sangramentos, verde,
	[evento_recente]).
