% =========================
% DOR LOMBAR
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(dor_lombar, vermelho,
    [obstrucao_vias_aereas]).

regra(dor_lombar, vermelho,
    [sinais_de_choque]).

regra(dor_lombar, vermelho,
    [falencia_respiratoria]).


% LARANJA
regra(dor_lombar, laranja,
    [mecanismo_trauma_significativo]).

regra(dor_lombar, laranja,
    [dor_abdominal]).

regra(dor_lombar, laranja,
    [dor_intensa]).

regra(dor_lombar, laranja,
    [incapaz_de_andar]).


% AMARELO
regra(dor_lombar, amarelo,
    [deficit_neurologico_novo]).

regra(dor_lombar, amarelo,
    [trauma_direto_dorso]).

regra(dor_lombar, amarelo,
    [dificuldade_de_andar]).

regra(dor_lombar, amarelo,
    [colicas]).

regra(dor_lombar, amarelo,
    [historia_discordante]).

regra(dor_lombar, amarelo,
    [dor_moderada]).


% VERDE
regra(dor_lombar, verde,
    [dor_leve_recente]).

regra(dor_lombar, verde,
    [evento_recente]).


% AZUL
regra(dor_lombar, azul,
    [dor_leve]).
