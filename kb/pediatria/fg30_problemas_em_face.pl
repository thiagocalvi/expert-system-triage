% =========================
% PROBLEMAS EM FACE
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(problemas_em_face, vermelho,
	[obstrucao_vias_aereas]).

regra(problemas_em_face, vermelho,
	[falencia_respiratoria]).

regra(problemas_em_face, vermelho,
	[sinais_de_choque]).

regra(problemas_em_face, vermelho,
	[hemorragia_grave]).


% LARANJA
regra(problemas_em_face, laranja,
	[alteracao_subita_nivel_de_consciencia]).

regra(problemas_em_face, laranja,
	[dor_intensa]).


% AMARELO
regra(problemas_em_face, amarelo,
	[deformidade_grosseira]).

regra(problemas_em_face, amarelo,
	[disturbio_coagulacao]).

regra(problemas_em_face, amarelo,
	[reducao_recente_acuidade_visual]).

regra(problemas_em_face, amarelo,
	[pequena_hemorragia]).

regra(problemas_em_face, amarelo,
	[avulsao_dentaria_aguda]).

regra(problemas_em_face, amarelo,
	[historia_discordante]).

regra(problemas_em_face, amarelo,
	[dor_moderada]).


% VERDE
regra(problemas_em_face, verde,
	[hematoma_de_orelha]).

regra(problemas_em_face, verde,
	[sensibilidade_na_face_alterada]).

regra(problemas_em_face, verde,
	[edema_facial]).

regra(problemas_em_face, verde,
	[olho_vermelho]).

regra(problemas_em_face, verde,
	[dor_leve]).

regra(problemas_em_face, verde,
	[evento_recente]).
