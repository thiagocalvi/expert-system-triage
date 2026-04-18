% =========================
% MAL ESTAR GERAL
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(mal_estar_geral, vermelho,
	[hipoglicemia_grave]).

regra(mal_estar_geral, vermelho,
	[respiracao_inadequada]).

regra(mal_estar_geral, vermelho,
	[sinais_de_choque]).

regra(mal_estar_geral, vermelho,
	[sinais_neurologicos_focais]).

regra(mal_estar_geral, vermelho,
	[sinais_de_meningismo]).


% LARANJA
regra(mal_estar_geral, laranja,
	[alteracao_nivel_consciencia_ecg_9_13]).

regra(mal_estar_geral, laranja,
	[dor_intensa]).


% AMARELO
regra(mal_estar_geral, amarelo,
	[manifestacoes_hemorragicas]).

regra(mal_estar_geral, amarelo,
	[sudorese_fria]).

regra(mal_estar_geral, amarelo,
	[sinais_vitais_alterados]).

regra(mal_estar_geral, amarelo,
	[dor_moderada]).

regra(mal_estar_geral, amarelo,
	[bolhas_ou_manchas_disseminadas]).

regra(mal_estar_geral, amarelo,
	[imunossupressao_conhecida]).

regra(mal_estar_geral, amarelo,
	[historia_hematologica_importante]).


% VERDE
regra(mal_estar_geral, verde,
	[alteracao_temperatura_37_8]).

regra(mal_estar_geral, verde,
	[viagem_recente_area_endemica_menos_7_dias]).

regra(mal_estar_geral, verde,
	[dor_leve]).
