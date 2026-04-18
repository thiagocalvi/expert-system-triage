% =========================
% DESMAIO, TONTURA E VERTIGEM
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(desmaio_tontura_vertigem, vermelho,
	[alteracao_nivel_consciencia_ecg_menor_9]).

regra(desmaio_tontura_vertigem, vermelho,
	[obstrucao_vias_aereas]).

regra(desmaio_tontura_vertigem, vermelho,
	[alteracoes_glicemicas]).

regra(desmaio_tontura_vertigem, vermelho,
	[dor_toracica_tipica]).

regra(desmaio_tontura_vertigem, vermelho,
	[rigidez_nuca_hipertonicidade]).

regra(desmaio_tontura_vertigem, vermelho,
	[deficit_neurologico_agudo]).

regra(desmaio_tontura_vertigem, vermelho,
	[sinais_de_choque]).


% LARANJA
regra(desmaio_tontura_vertigem, laranja,
	[pulso_filiforme]).

regra(desmaio_tontura_vertigem, laranja,
	[disturbio_subito_equilibrio]).

regra(desmaio_tontura_vertigem, laranja,
	[dor_intensa]).

regra(desmaio_tontura_vertigem, laranja,
	[pos_comicial_com_rebaixamento]).

regra(desmaio_tontura_vertigem, laranja,
	[dispneia_aguda]).

regra(desmaio_tontura_vertigem, laranja,
	[alteracao_nivel_consciencia_ecg_9_13]).

regra(desmaio_tontura_vertigem, laranja,
	[alteracao_temperatura]).

regra(desmaio_tontura_vertigem, laranja,
	[historia_importante_alergia]).

regra(desmaio_tontura_vertigem, laranja,
	[cefaleia_intensa_inicio_subito]).

regra(desmaio_tontura_vertigem, laranja,
	[historia_trauma_craniano_recente]).


% AMARELO
regra(desmaio_tontura_vertigem, amarelo,
	[historia_inconsciencia]).

regra(desmaio_tontura_vertigem, amarelo,
	[dor_moderada]).

regra(desmaio_tontura_vertigem, amarelo,
	[pos_comicial_sem_rebaixamento_grave]).

regra(desmaio_tontura_vertigem, amarelo,
	[primeira_crise_convulsiva]).

regra(desmaio_tontura_vertigem, amarelo,
	[crise_convulsiva_menos_12h_paciente_alerta]).


% VERDE
regra(desmaio_tontura_vertigem, verde,
	[dor_leve]).

regra(desmaio_tontura_vertigem, verde,
	[parestesias_bilaterais_ou_migratorias]).
