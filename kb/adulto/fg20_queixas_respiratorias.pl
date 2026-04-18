% =========================
% QUEIXAS RESPIRATÓRIAS
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(queixas_respiratorias, vermelho,
	[sinais_de_choque]).

regra(queixas_respiratorias, vermelho,
	[inicio_agudo_apos_trauma]).

regra(queixas_respiratorias, vermelho,
	[exaustao_respiratoria]).

regra(queixas_respiratorias, vermelho,
	[respiracao_inadequada]).

regra(queixas_respiratorias, vermelho,
	[saturacao_o2_menor_85]).

regra(queixas_respiratorias, vermelho,
	[uso_musculatura_acessoria]).


% LARANJA
regra(queixas_respiratorias, laranja,
	[alteracao_estado_mental]).

regra(queixas_respiratorias, laranja,
	[dor_cardiaca]).

regra(queixas_respiratorias, laranja,
	[incapacidade_falar_frases_completas]).

regra(queixas_respiratorias, laranja,
	[estridor_laringeo_ou_dificuldade_falar]).

regra(queixas_respiratorias, laranja,
	[frequencia_cardiaca_irregular_ou_alterada]).

regra(queixas_respiratorias, laranja,
	[saturacao_o2_85_89]).

regra(queixas_respiratorias, laranja,
	[historia_respiratoria_importante]).


% AMARELO
regra(queixas_respiratorias, amarelo,
	[saturacao_o2_90_94]).

regra(queixas_respiratorias, amarelo,
	[alteracao_temperatura_37_5]).


% VERDE
regra(queixas_respiratorias, verde,
	[dor_de_garganta]).

regra(queixas_respiratorias, verde,
	[tosse_produtiva]).

regra(queixas_respiratorias, verde,
	[saturacao_o2_maior_igual_95]).

regra(queixas_respiratorias, verde,
	[evento_recente_menos_7_dias]).

regra(queixas_respiratorias, verde,
	[historia_chiado_noturno]).
