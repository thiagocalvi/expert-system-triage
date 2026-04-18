% =========================
% TRAUMA TORACOABDOMINAL
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(trauma_toracoabdominal, vermelho,
	[sinais_de_choque]).

regra(trauma_toracoabdominal, vermelho,
	[obstrucao_vias_aereas]).

regra(trauma_toracoabdominal, vermelho,
	[respiracao_inadequada]).

regra(trauma_toracoabdominal, vermelho,
	[lesao_grandes_vasos_ou_hemorragia_grave]).


% LARANJA
regra(trauma_toracoabdominal, laranja,
	[dor_intensa]).

regra(trauma_toracoabdominal, laranja,
	[alteracao_nivel_consciencia_ecg_9_13]).

regra(trauma_toracoabdominal, laranja,
	[dispneia_aguda]).

regra(trauma_toracoabdominal, laranja,
	[evisceracao]).

regra(trauma_toracoabdominal, laranja,
	[grave_mecanismo_de_trauma]).


% AMARELO
regra(trauma_toracoabdominal, amarelo,
	[dor_moderada]).

regra(trauma_toracoabdominal, amarelo,
	[hemorragia_controlavel]).


% VERDE
regra(trauma_toracoabdominal, verde,
	[dor_leve]).

regra(trauma_toracoabdominal, verde,
	[evento_recente_menos_7_dias]).

regra(trauma_toracoabdominal, verde,
	[infeccao_local]).

regra(trauma_toracoabdominal, verde,
	[inflamacao_local]).
