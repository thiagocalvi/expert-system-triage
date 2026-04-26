% =========================
% CEFALEIA / DOR DE CABEÇA
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(cefaleia, vermelho,
    [sinais_de_choque]).

regra(cefaleia, vermelho,
    [crianca_nao_reativa]).

regra(cefaleia, vermelho,
    [convulsao]).

regra(cefaleia, vermelho,
    [falencia_respiratoria]).


% LARANJA
regra(cefaleia, laranja,
    [inicio_abrupto]).

regra(cefaleia, laranja,
    [dor_intensa]).

regra(cefaleia, laranja,
    [alteracoes_sensoriais_comportamento]).

regra(cefaleia, laranja,
    [sinais_focais]).

regra(cefaleia, laranja,
    [perda_total_visao_aguda]).

regra(cefaleia, laranja,
    [sinais_de_meningismo]).

regra(cefaleia, laranja,
    [purpura]).

regra(cefaleia, laranja,
    [erupcao_cutanea_fixa]).

regra(cefaleia, laranja,
    [vomitos_em_jato]).


% AMARELO
regra(cefaleia, amarelo,
    [historia_inconsciencia]).

regra(cefaleia, amarelo,
    [reducao_recente_acuidade_visual]).

regra(cefaleia, amarelo,
    [dor_moderada]).

regra(cefaleia, amarelo,
    [vomitos_persistentes]).


% VERDE
regra(cefaleia, verde,
    [dor_leve]).

regra(cefaleia, verde,
    [vomitos_sem_desidratacao]).
