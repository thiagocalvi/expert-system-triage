% =============================================
% QUEIXAS URINÁRIAS / DOR TESTICULAR
% =============================================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% LARANJA
regra(queixas_urinarias_dor_testicular, laranja,
	[prostacao_palidez_sudorese]).

regra(queixas_urinarias_dor_testicular, laranja,
	[dor_escrotal_aguda]).

regra(queixas_urinarias_dor_testicular, laranja,
	[priapismo]).

regra(queixas_urinarias_dor_testicular, laranja,
	[dor_intensa]).

regra(queixas_urinarias_dor_testicular, laranja,
	[hematuria]).

regra(queixas_urinarias_dor_testicular, laranja,
	[gangrena_escroto]).

regra(queixas_urinarias_dor_testicular, laranja,
	[celulite_escroto]).

regra(queixas_urinarias_dor_testicular, laranja,
	[retencao_urinaria_aguda_com_bexigoma]).


% AMARELO
regra(queixas_urinarias_dor_testicular, amarelo,
	[dor_moderada]).

regra(queixas_urinarias_dor_testicular, amarelo,
	[disuria_intensa_com_polaciuria_ou_hematuria]).

regra(queixas_urinarias_dor_testicular, amarelo,
	[alteracao_temperatura_35_38_5]).

regra(queixas_urinarias_dor_testicular, amarelo,
	[vomitos_persistentes]).


% VERDE
regra(queixas_urinarias_dor_testicular, verde,
	[dor_leve]).

regra(queixas_urinarias_dor_testicular, verde,
	[trauma_superficial_escroto]).

regra(queixas_urinarias_dor_testicular, verde,
	[corrimento_uretral_amarelado_fetido]).

regra(queixas_urinarias_dor_testicular, verde,
	[troca_de_sonda_obstruida]).

regra(queixas_urinarias_dor_testicular, verde,
	[evento_recente_menos_7_dias]).
