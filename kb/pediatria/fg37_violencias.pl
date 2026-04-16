% =========================
% VIOLÊNCIAS
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(violencias, vermelho,
	[pcr_bradicardia_importante_ou_pcr_iminente]).

regra(violencias, vermelho,
	[falencia_respiratoria]).

regra(violencias, vermelho,
	[convulsao_em_atividade]).

regra(violencias, vermelho,
	[paciente_nao_responsivo]).

regra(violencias, vermelho,
	[sinais_de_choque]).

regra(violencias, vermelho,
	[edema_labial_lingua_garganta_fechando]).

regra(violencias, vermelho,
	[lesao_superficial_sem_sinais_sistemicos]).


% LARANJA
regra(violencias, laranja,
	[dispneia_moderada_intensa]).

regra(violencias, laranja,
	[spo2_muito_baixa]).

regra(violencias, laranja,
	[alteracoes_sensoriais_comportamento]).

regra(violencias, laranja,
	[agitacao_psicomotora]).

regra(violencias, laranja,
	[violencia_sexual_menor_72h]).


% AMARELO
regra(violencias, amarelo,
	[dispneia_leve]).

regra(violencias, amarelo,
	[historico_tentativas_recorrentes_de_suicidio]).

regra(violencias, amarelo,
	[violencia_sexual_maior_72h]).

regra(violencias, amarelo,
	[violencia_psicologica_ou_moral]).

regra(violencias, amarelo,
	[ideacao_suicida]).

regra(violencias, amarelo,
	[autoflagelacao]).
