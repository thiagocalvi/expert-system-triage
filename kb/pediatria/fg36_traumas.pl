% =========================
% TRAUMAS
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(traumas, vermelho,
	[politraumatizado]).

regra(traumas, vermelho,
	[hemorragia_exsanguinante]).

regra(traumas, vermelho,
	[alteracao_subita_nivel_de_consciencia]).

regra(traumas, vermelho,
	[amputacao_traumatica_de_membros]).

regra(traumas, vermelho,
	[trauma_toracico_craniano_abdominal_ou_perfuracao]).

regra(traumas, vermelho,
	[mecanismo_de_trauma_significativo]).


% LARANJA
regra(traumas, laranja,
	[tce_com_perda_consciencia_ou_vomitos]).

regra(traumas, laranja,
	[fratura_exposta_ou_com_deformidade]).

regra(traumas, laranja,
	[alteracao_subita_nivel_de_consciencia]).

regra(traumas, laranja,
	[obnubilado]).

regra(traumas, laranja,
	[hemorragia_exsanguinante]).

regra(traumas, laranja,
	[ferimento_extenso]).


% AMARELO
regra(traumas, amarelo,
	[tce_menor_12h_sem_perda_consciencia_ou_vomitos]).

regra(traumas, amarelo,
	[hemorragia_menor_incontrolavel]).


% VERDE
regra(traumas, verde,
	[tce_maior_12h_sem_perda_consciencia_ou_vomitos]).

regra(traumas, verde,
	[pequena_hemorragia]).
