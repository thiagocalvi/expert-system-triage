% =========================
% PALPITAÇÕES
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(palpitacoes, vermelho,
	[obstrucao_vias_aereas]).

regra(palpitacoes, vermelho,
	[falencia_respiratoria]).

regra(palpitacoes, vermelho,
	[sinais_de_choque]).


% LARANJA
regra(palpitacoes, laranja,
	[dispneia_aguda]).

regra(palpitacoes, laranja,
	[pulso_anormal]).

regra(palpitacoes, laranja,
	[crianca_nao_reativa]).

regra(palpitacoes, laranja,
	[dor_precordial_ou_cardiaca]).


% AMARELO
regra(palpitacoes, amarelo,
	[historia_inconsciencia]).

regra(palpitacoes, amarelo,
	[palpitacao_atual]).

regra(palpitacoes, amarelo,
	[historico_cardiaco_importante]).


% VERDE
regra(palpitacoes, verde,
	[evento_recente]).
