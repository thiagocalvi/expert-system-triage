% =========================
% PROBLEMAS DENTÁRIOS
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(problemas_dentarios, vermelho,
	[obstrucao_vias_aereas]).

regra(problemas_dentarios, vermelho,
	[falencia_respiratoria]).

regra(problemas_dentarios, vermelho,
	[sinais_de_choque]).

regra(problemas_dentarios, vermelho,
	[hemorragia_grave]).


% LARANJA
regra(problemas_dentarios, laranja,
	[hemorragia_menor_incontrolavel]).

regra(problemas_dentarios, laranja,
	[dor_intensa]).


% AMARELO
regra(problemas_dentarios, amarelo,
	[disturbio_coagulacao]).

regra(problemas_dentarios, amarelo,
	[avulsao_dentaria_aguda]).

regra(problemas_dentarios, amarelo,
	[historia_discordante]).

regra(problemas_dentarios, amarelo,
	[dor_moderada]).


% VERDE
regra(problemas_dentarios, verde,
	[edema_facial]).

regra(problemas_dentarios, verde,
	[dor_leve_recente]).

regra(problemas_dentarios, verde,
	[evento_recente]).
