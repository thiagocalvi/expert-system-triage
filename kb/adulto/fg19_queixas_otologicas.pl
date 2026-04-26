% =========================
% QUEIXAS OTOLÓGICAS
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% LARANJA
regra(queixas_otologicas, laranja,
	[alteracao_estado_mental]).

regra(queixas_otologicas, laranja,
	[otorragia]).

regra(queixas_otologicas, laranja,
	[dor_intensa]).


% AMARELO
regra(queixas_otologicas, amarelo,
	[dor_moderada]).


% VERDE
regra(queixas_otologicas, verde,
	[dor_leve]).

regra(queixas_otologicas, verde,
	[perda_recente_audicao]).

regra(queixas_otologicas, verde,
	[zumbido]).

regra(queixas_otologicas, verde,
	[presenca_corpo_estranho]).
