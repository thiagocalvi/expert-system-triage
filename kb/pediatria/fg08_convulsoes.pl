% =========================
% CONVULSÕES
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(convulsoes, vermelho,
    [obstrucao_vias_aereas]).

regra(convulsoes, vermelho,
    [falencia_respiratoria]).

regra(convulsoes, vermelho,
    [sinais_de_choque]).

regra(convulsoes, vermelho,
    [crianca_nao_reativa]).

regra(convulsoes, vermelho,
    [convulsao]).

regra(convulsoes, vermelho,
    [hipoglicemia]).


% LARANJA
regra(convulsoes, laranja,
    [alteracao_subita_estado_consciencia]).

regra(convulsoes, laranja,
    [deficit_neurologico_agudo]).

regra(convulsoes, laranja,
    [sinais_de_meningismo]).

regra(convulsoes, laranja,
    [historia_overdose_envenenamento]).

regra(convulsoes, laranja,
    [erupcao_cutanea_fixa]).

regra(convulsoes, laranja,
    [purpura]).


% AMARELO
regra(convulsoes, amarelo,
    [historia_trauma_craniano_recente]).

regra(convulsoes, amarelo,
    [historia_discordante]).

regra(convulsoes, amarelo,
    [deficit_neurologico_novo]).


% VERDE
regra(convulsoes, verde,
    [cefaleia]).

regra(convulsoes, verde,
    [dor_leve_recente]).

regra(convulsoes, verde,
    [evento_recente]).
