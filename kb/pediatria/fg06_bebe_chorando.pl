% =========================
% BEBÊ CHORANDO
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(bebe_chorando, vermelho,
    [obstrucao_vias_aereas]).

regra(bebe_chorando, vermelho,
    [falencia_respiratoria]).

regra(bebe_chorando, vermelho,
    [sinais_de_choque]).

regra(bebe_chorando, vermelho,
    [crianca_nao_reativa]).


% LARANJA
regra(bebe_chorando, laranja,
    [dor_intensa]).

regra(bebe_chorando, laranja,
    [resposta_voz_dor_apenas]).

regra(bebe_chorando, laranja,
    [prostracao_hipotonia]).

regra(bebe_chorando, laranja,
    [purpura]).

regra(bebe_chorando, laranja,
    [erupcao_cutanea_fixa]).


% AMARELO
regra(bebe_chorando, amarelo,
    [dor_moderada]).

regra(bebe_chorando, amarelo,
    [historia_inconsciencia]).

regra(bebe_chorando, amarelo,
    [historia_discordante]).

regra(bebe_chorando, amarelo,
    [inconsolavel_pelos_pais]).

regra(bebe_chorando, amarelo,
    [choro_prolongado_ininterrupto]).

regra(bebe_chorando, amarelo,
    [incapaz_de_se_alimentar]).


% VERDE
regra(bebe_chorando, verde,
    [dor_leve_recente]).

regra(bebe_chorando, verde,
    [comportamento_atipico]).

regra(bebe_chorando, verde,
    [evento_recente]).
