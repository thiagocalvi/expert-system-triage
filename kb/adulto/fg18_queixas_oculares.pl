% =========================
% QUEIXAS OCULARES
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% LARANJA
regra(queixas_oculares, laranja,
	[sinais_vitais_alterados]).

regra(queixas_oculares, laranja,
	[dor_intensa]).

regra(queixas_oculares, laranja,
	[perda_visual_subita_ou_diplopia]).


% AMARELO
regra(queixas_oculares, amarelo,
	[dor_moderada]).

regra(queixas_oculares, amarelo,
	[celulite_periorbitaria]).


% VERDE
regra(queixas_oculares, verde,
	[dor_leve]).

regra(queixas_oculares, verde,
	[sensacao_de_corpo_estranho]).

regra(queixas_oculares, verde,
	[hemorragia_subconjuntival_sem_trauma]).

regra(queixas_oculares, verde,
	[olho_avermelhado_sem_trauma_ou_exposicao]).

regra(queixas_oculares, verde,
	[prurido_ocular]).

regra(queixas_oculares, verde,
	[tercol_ou_calazio]).
