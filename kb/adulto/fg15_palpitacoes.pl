% =========================
% PALPITAÇÕES
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(palpitacoes, vermelho,
	[respiracao_inadequada]).

regra(palpitacoes, vermelho,
	[sinais_de_choque]).

regra(palpitacoes, vermelho,
	[dor_toracica]).


% LARANJA
regra(palpitacoes, laranja,
	[dispneia_aguda]).

regra(palpitacoes, laranja,
	[pulso_filiforme]).

regra(palpitacoes, laranja,
	[dor_intensa]).

regra(palpitacoes, laranja,
	[historia_overdose_envenenamento]).


% AMARELO
regra(palpitacoes, amarelo,
	[palpitacao_no_momento]).

regra(palpitacoes, amarelo,
	[historia_cardiaca_importante]).

regra(palpitacoes, amarelo,
	[historia_inconsciencia]).


% VERDE
regra(palpitacoes, verde,
	[evento_recente_sem_sinais_gravidade]).
