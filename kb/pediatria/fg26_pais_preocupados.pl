% =========================
% PAIS PREOCUPADOS
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(pais_preocupados, vermelho,
	[obstrucao_vias_aereas]).

regra(pais_preocupados, vermelho,
	[falencia_respiratoria]).

regra(pais_preocupados, vermelho,
	[sinais_de_choque]).

regra(pais_preocupados, vermelho,
	[crianca_nao_reativa]).


% LARANJA
regra(pais_preocupados, laranja,
	[spo2_muito_baixa]).

regra(pais_preocupados, laranja,
	[prostracao_hipotonia]).

regra(pais_preocupados, laranja,
	[nao_reage_aos_pais]).

regra(pais_preocupados, laranja,
	[purpura]).

regra(pais_preocupados, laranja,
	[erupcao_cutanea_fixa]).

regra(pais_preocupados, laranja,
	[historia_overdose_envenenamento]).

regra(pais_preocupados, laranja,
	[sepse_possivel]).

regra(pais_preocupados, laranja,
	[dor_intensa]).

regra(pais_preocupados, laranja,
	[ingestao_objeto_perigoso]).


% AMARELO
regra(pais_preocupados, amarelo,
	[spo2_baixa]).

regra(pais_preocupados, amarelo,
	[sinais_de_desidratacao]).

regra(pais_preocupados, amarelo,
	[nao_se_alimenta]).

regra(pais_preocupados, amarelo,
	[sem_urinar]).

regra(pais_preocupados, amarelo,
	[choro_prolongado_ininterrupto]).

regra(pais_preocupados, amarelo,
	[inconsolavel_pelos_pais]).

regra(pais_preocupados, amarelo,
	[historia_discordante]).

regra(pais_preocupados, amarelo,
	[dor_moderada]).


% VERDE
regra(pais_preocupados, verde,
	[comportamento_atipico]).

regra(pais_preocupados, verde,
	[dor_leve]).
