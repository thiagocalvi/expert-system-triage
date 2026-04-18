% =========================
% QUEIMADURAS
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(queimaduras, vermelho,
	[estado_mental_alterado]).

regra(queimaduras, vermelho,
	[respiracao_inadequada]).

regra(queimaduras, vermelho,
	[saturacao_o2_menor_85]).


% LARANJA
regra(queimaduras, laranja,
	[queimaduras_circunferenciais]).

regra(queimaduras, laranja,
	[queimaduras_2_3_grau_10_25_scq]).

regra(queimaduras, laranja,
	[queimaduras_2_3_grau_face_perineo]).

regra(queimaduras, laranja,
	[queimaduras_eletricas]).

regra(queimaduras, laranja,
	[queimaduras_ambiente_confinado]).

regra(queimaduras, laranja,
	[saturacao_o2_85_89]).

regra(queimaduras, laranja,
	[estridor_laringeo_ou_dificuldade_falar]).


% AMARELO
regra(queimaduras, amarelo,
	[queimaduras_2_3_grau_menor_10_scq]).

regra(queimaduras, amarelo,
	[queimaduras_1_grau_maior_10_scq]).

regra(queimaduras, amarelo,
	[queimaduras_1_grau_face_perineo]).

regra(queimaduras, amarelo,
	[queimaduras_maos_pes_qualquer_grau]).

regra(queimaduras, amarelo,
	[saturacao_o2_90_94]).


% VERDE
regra(queimaduras, verde,
	[saturacao_o2_maior_igual_95]).

regra(queimaduras, verde,
	[queimaduras_1_grau_menor_10_scq]).
