% =========================
% SANGRAMENTOS
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(sangramentos, vermelho,
	[sinais_de_choque]).

regra(sangramentos, vermelho,
	[obstrucao_vias_aereas]).

regra(sangramentos, vermelho,
	[respiracao_inadequada]).

regra(sangramentos, vermelho,
	[disturbio_coagulacao]).

regra(sangramentos, vermelho,
	[lesao_grandes_vasos_ou_hemorragia_grave]).

regra(sangramentos, vermelho,
	[disturbio_coagulacao_cardiopata_anticoagulante]).


% LARANJA
regra(sangramentos, laranja,
	[epistaxe_sem_controle_tamponamento]).

regra(sangramentos, laranja,
	[evacuacao_com_sangue_vivo_ou_alterado]).

regra(sangramentos, laranja,
	[historico_sangramento_digestivo_importante]).

regra(sangramentos, laranja,
	[dor_intensa]).

regra(sangramentos, laranja,
	[alteracao_nivel_consciencia_ecg_9_13]).

regra(sangramentos, laranja,
	[hematemese]).


% AMARELO
regra(sangramentos, amarelo,
	[dor_moderada]).

regra(sangramentos, amarelo,
	[fezes_enegrecidas_ou_geleia_de_groselha]).

regra(sangramentos, amarelo,
	[sangramento_vaginal]).

regra(sangramentos, amarelo,
	[vomitos_persistentes]).


% VERDE
regra(sangramentos, verde,
	[dor_leve]).

regra(sangramentos, verde,
	[relato_hemorroidas]).

regra(sangramentos, verde,
	[relato_epistaxe]).

regra(sangramentos, verde,
	[evento_recente_sem_sinais_gravidade]).
