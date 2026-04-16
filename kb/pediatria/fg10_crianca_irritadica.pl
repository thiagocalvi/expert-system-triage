% =========================
% CRIANÇA IRRITADIÇA
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(crianca_irritadica, vermelho,
    [obstrucao_vias_aereas]).

regra(crianca_irritadica, vermelho,
    [falencia_respiratoria]).

regra(crianca_irritadica, vermelho,
    [sinais_de_choque]).

regra(crianca_irritadica, vermelho,
    [hipoglicemia]).

regra(crianca_irritadica, vermelho,
    [crianca_nao_reativa]).


% LARANJA
regra(crianca_irritadica, laranja,
    [dor_intensa]).

regra(crianca_irritadica, laranja,
    [resposta_voz_dor_apenas]).

regra(crianca_irritadica, laranja,
    [sinais_de_meningismo]).

regra(crianca_irritadica, laranja,
    [historia_overdose_envenenamento]).

regra(crianca_irritadica, laranja,
    [erupcao_cutanea_fixa]).

regra(crianca_irritadica, laranja,
    [purpura]).


% AMARELO
regra(crianca_irritadica, amarelo,
    [choro_prolongado_ininterrupto]).

regra(crianca_irritadica, amarelo,
    [nao_entretivel]).

regra(crianca_irritadica, amarelo,
    [nao_se_alimenta]).

regra(crianca_irritadica, amarelo,
    [historia_discordante]).

regra(crianca_irritadica, amarelo,
    [dor_moderada]).


% VERDE
regra(crianca_irritadica, verde,
    [dor_leve_recente]).

regra(crianca_irritadica, verde,
    [evento_recente]).

regra(crianca_irritadica, verde,
    [comportamento_atipico]).
