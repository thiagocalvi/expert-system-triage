% =========================
% DOR TESTICULAR
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(dor_testicular, vermelho,
    [obstrucao_vias_aereas]).

regra(dor_testicular, vermelho,
    [falencia_respiratoria]).

regra(dor_testicular, vermelho,
    [sinais_de_choque]).


% LARANJA
regra(dor_testicular, laranja,
    [prostacao_palidez_sudorese]).

regra(dor_testicular, laranja,
    [gangrena_escroto]).

regra(dor_testicular, laranja,
    [dor_intensa]).

regra(dor_testicular, laranja,
    [hematuria]).

regra(dor_testicular, laranja,
    [priapismo]).

regra(dor_testicular, laranja,
    [retencao_urinaria_aguda_bexigoma]).


% AMARELO
regra(dor_testicular, amarelo,
    [disuria_intensa_polaciuria_hematuria]).

regra(dor_testicular, amarelo,
    [trauma_de_escroto]).

regra(dor_testicular, amarelo,
    [dor_moderada]).

regra(dor_testicular, amarelo,
    [vomitos_persistentes]).


% VERDE
regra(dor_testicular, verde,
    [trauma_de_escroto]).

regra(dor_testicular, verde,
    [vomitos_sem_desidratacao]).

regra(dor_testicular, verde,
    [dor_leve_recente]).

regra(dor_testicular, verde,
    [evento_recente]).
