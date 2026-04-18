% =========================
% DIARREIA E VÔMITOS
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(diarreia_vomitos, vermelho,
	[alteracao_nivel_consciencia_ecg_menor_9]).

regra(diarreia_vomitos, vermelho,
	[obstrucao_vias_aereas]).

regra(diarreia_vomitos, vermelho,
	[dor_toracica_tipica]).

regra(diarreia_vomitos, vermelho,
	[rigidez_nuca_hipertonicidade]).

regra(diarreia_vomitos, vermelho,
	[deficit_neurologico_agudo]).

regra(diarreia_vomitos, vermelho,
	[sinais_de_choque]).


% LARANJA
regra(diarreia_vomitos, laranja,
	[dor_intensa]).

regra(diarreia_vomitos, laranja,
	[alteracao_nivel_consciencia_ecg_9_13]).

regra(diarreia_vomitos, laranja,
	[perfusao_comprometida]).


% AMARELO
regra(diarreia_vomitos, amarelo,
	[alteracao_temperatura_maior_38_5]).

regra(diarreia_vomitos, amarelo,
	[fezes_enegrecidas_ou_geleia_de_groselha]).

regra(diarreia_vomitos, amarelo,
	[dor_moderada]).

regra(diarreia_vomitos, amarelo,
	[sinais_desidratacao]).


% VERDE
regra(diarreia_vomitos, verde,
	[dor_leve]).

regra(diarreia_vomitos, verde,
	[vomitos_esporadicos]).

regra(diarreia_vomitos, verde,
	[evento_inicio_menos_6h]).
