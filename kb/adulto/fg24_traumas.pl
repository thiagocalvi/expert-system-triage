% =========================
% TRAUMAS
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(traumas, vermelho,
	[sinais_de_choque]).

regra(traumas, vermelho,
	[obstrucao_vias_aereas]).

regra(traumas, vermelho,
	[sinais_de_isquemia]).

regra(traumas, vermelho,
	[fratura_exposta]).

regra(traumas, vermelho,
	[sinais_neurologicos_focais]).


% LARANJA
regra(traumas, laranja,
	[dor_intensa]).

regra(traumas, laranja,
	[ferida_com_sangramento_ativo]).

regra(traumas, laranja,
	[edema_mais_mais_4]).

regra(traumas, laranja,
	[alteracoes_respiratorias]).

regra(traumas, laranja,
	[incapacidade_de_andar]).

regra(traumas, laranja,
	[grave_mecanismo_de_trauma]).


% AMARELO
regra(traumas, amarelo,
	[dor_moderada]).

regra(traumas, amarelo,
	[ferimento_sem_sangramento_ativo]).

regra(traumas, amarelo,
	[deformidade_em_membros]).

regra(traumas, amarelo,
	[cefaleia]).

regra(traumas, amarelo,
	[vomito]).

regra(traumas, amarelo,
	[sem_sinais_de_isquemia]).

regra(traumas, amarelo,
	[sinais_flogisticos_locais]).

regra(traumas, amarelo,
	[limitacao_movimentos_funcao]).


% VERDE
regra(traumas, verde,
	[dor_leve]).

regra(traumas, verde,
	[evento_recente_menos_7_dias]).

regra(traumas, verde,
	[edema_articular_sem_flogose]).

regra(traumas, verde,
	[limitacao_leve_movimentos]).

regra(traumas, verde,
	[sem_perda_da_funcao]).
