% =========================
% POLITRAUMAS
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(politraumas, vermelho,
	[sinais_de_choque]).

regra(politraumas, vermelho,
	[obstrucao_vias_aereas]).

regra(politraumas, vermelho,
	[lesao_grandes_vasos_ou_hemorragia_grave]).

regra(politraumas, vermelho,
	[amputacao_traumatica]).

regra(politraumas, vermelho,
	[sinais_neurologicos_focais]).

regra(politraumas, vermelho,
	[otorragia]).


% LARANJA
regra(politraumas, laranja,
	[alteracao_nivel_consciencia_ecg_9_13]).

regra(politraumas, laranja,
	[palidez_cutanea_sudorese_fria]).

regra(politraumas, laranja,
	[dor_pleuritica]).

regra(politraumas, laranja,
	[dor_cervical]).

regra(politraumas, laranja,
	[dor_intensa]).

regra(politraumas, laranja,
	[dor_ou_instabilidade_pelve]).

regra(politraumas, laranja,
	[nauseas_ou_vomitos]).

regra(politraumas, laranja,
	[evisceracao]).

regra(politraumas, laranja,
	[ferimento_perfurante]).

regra(politraumas, laranja,
	[trauma_direto_pescoco]).


% AMARELO
regra(politraumas, amarelo,
	[grave_mecanismo_de_trauma]).

regra(politraumas, amarelo,
	[historia_inconsciencia]).

regra(politraumas, amarelo,
	[hemorragia_controlavel]).

regra(politraumas, amarelo,
	[cefaleia_moderada]).

regra(politraumas, amarelo,
	[cefaleia_pos_trauma]).

regra(politraumas, amarelo,
	[dor_moderada]).


% VERDE
regra(politraumas, verde,
	[contusoes_escoriacoes]).

regra(politraumas, verde,
	[dor_leve]).

regra(politraumas, verde,
	[evento_recente_sem_sinais_gravidade]).

regra(politraumas, verde,
	[trauma_ocorrido_mais_6_horas]).

regra(politraumas, verde,
	[edema_local]).

regra(politraumas, verde,
	[deformidade_local_sem_lesoes_associadas]).
