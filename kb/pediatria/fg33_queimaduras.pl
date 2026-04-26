% =========================
% QUEIMADURAS
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(queimaduras, vermelho,
	[superficie_corporal_queimada_maior_10]).

regra(queimaduras, vermelho,
	[queimaduras_associadas_politrauma]).

regra(queimaduras, vermelho,
	[queimaduras_quimicas]).

regra(queimaduras, vermelho,
	[queimaduras_de_face]).

regra(queimaduras, vermelho,
	[inalacao_de_fumaca]).

regra(queimaduras, vermelho,
	[queimaduras_eletricas]).


% LARANJA
regra(queimaduras, laranja,
	[queimaduras_de_genitalia]).

regra(queimaduras, laranja,
	[queimaduras_em_circunferencia_risco_sindrome_compartimental]).


% AMARELO
regra(queimaduras, amarelo,
	[queimaduras_com_comorbidades_ou_risco_social]).

regra(queimaduras, amarelo,
	[sinais_de_infeccao_em_queimadura]).


% VERDE
regra(queimaduras, verde,
	[queimaduras_mais_24h_com_queixa_clinica_nova]).


% AZUL
regra(queimaduras, azul,
	[queimaduras_mais_24h_sem_alteracoes_clinicas]).
