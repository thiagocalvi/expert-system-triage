% =========================
% MAL ESTAR EM CRIANÇA
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(mal_estar_em_crianca, vermelho,
    [obstrucao_vias_aereas]).

regra(mal_estar_em_crianca, vermelho,
    [falencia_respiratoria]).

regra(mal_estar_em_crianca, vermelho,
    [sinais_de_choque]).

regra(mal_estar_em_crianca, vermelho,
    [hipoglicemia]).

regra(mal_estar_em_crianca, vermelho,
    [convulsao]).

regra(mal_estar_em_crianca, vermelho,
    [crianca_nao_reativa]).


% LARANJA
regra(mal_estar_em_crianca, laranja,
    [crianca_nao_reativa]).

regra(mal_estar_em_crianca, laranja,
    [sinais_de_meningismo]).

regra(mal_estar_em_crianca, laranja,
    [erupcao_cutanea_fixa]).

regra(mal_estar_em_crianca, laranja,
    [purpura]).

regra(mal_estar_em_crianca, laranja,
    [dor_intensa]).

regra(mal_estar_em_crianca, laranja,
    [hipotermia]).


% AMARELO
regra(mal_estar_em_crianca, amarelo,
    [sinais_de_desidratacao]).

regra(mal_estar_em_crianca, amarelo,
    [sem_urinar]).

regra(mal_estar_em_crianca, amarelo,
    [nao_se_alimenta]).

regra(mal_estar_em_crianca, amarelo,
    [historia_discordante]).

regra(mal_estar_em_crianca, amarelo,
    [dor_moderada]).


% VERDE
regra(mal_estar_em_crianca, verde,
    [dor_leve_recente]).

regra(mal_estar_em_crianca, verde,
    [comportamento_atipico]).
