% =========================
% DOR DE GARGANTA
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(dor_de_garganta, vermelho,
	[obstrucao_vias_aereas]).


% LARANJA
regra(dor_de_garganta, laranja,
	[dor_intensa]).

regra(dor_de_garganta, laranja,
	[estridor_laringeo_ou_dificuldade_falar]).


% AMARELO
regra(dor_de_garganta, amarelo,
	[dor_moderada]).

regra(dor_de_garganta, amarelo,
	[alteracao_temperatura_maior_38_5]).

regra(dor_de_garganta, amarelo,
	[historia_viagem_recente]).


% VERDE
regra(dor_de_garganta, verde,
	[dificuldade_para_deglutir]).

regra(dor_de_garganta, verde,
	[ardencia_garganta_sem_sialorreia]).

regra(dor_de_garganta, verde,
	[tosse_coriza_obstrucao_nasal]).

regra(dor_de_garganta, verde,
	[dor_leve]).
