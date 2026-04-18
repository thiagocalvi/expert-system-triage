% =========================
% DOR ABDOMINAL OU QUEIXAS ABDOMINAIS
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(dor_abdominal_ou_queixas_abdominais, vermelho,
	[obstrucao_vias_aereas]).

regra(dor_abdominal_ou_queixas_abdominais, vermelho,
	[respiracao_inadequada]).

regra(dor_abdominal_ou_queixas_abdominais, vermelho,
	[sinais_de_choque_fc_150]).

regra(dor_abdominal_ou_queixas_abdominais, vermelho,
	[vomito_com_sangue_repercussao_hemodinamica]).


% LARANJA
regra(dor_abdominal_ou_queixas_abdominais, laranja,
	[dor_irradiando_para_dorso]).

regra(dor_abdominal_ou_queixas_abdominais, laranja,
	[dor_epigastrica]).

regra(dor_abdominal_ou_queixas_abdominais, laranja,
	[dor_intensa]).

regra(dor_abdominal_ou_queixas_abdominais, laranja,
	[alteracao_temperatura]).


% AMARELO
regra(dor_abdominal_ou_queixas_abdominais, amarelo,
	[fezes_enegrecidas_ou_geleia_de_groselha]).

regra(dor_abdominal_ou_queixas_abdominais, amarelo,
	[dor_moderada]).

regra(dor_abdominal_ou_queixas_abdominais, amarelo,
	[historia_vomito_com_sangue_menos_6h]).

regra(dor_abdominal_ou_queixas_abdominais, amarelo,
	[sangramento_vaginal]).

regra(dor_abdominal_ou_queixas_abdominais, amarelo,
	[possivel_gravidez]).

regra(dor_abdominal_ou_queixas_abdominais, amarelo,
	[irradiacao_para_ombro]).

regra(dor_abdominal_ou_queixas_abdominais, amarelo,
	[vomitos_persistentes]).


% VERDE
regra(dor_abdominal_ou_queixas_abdominais, verde,
	[dor_leve]).

regra(dor_abdominal_ou_queixas_abdominais, verde,
	[parestesias_bilaterais_ou_migratorias]).
