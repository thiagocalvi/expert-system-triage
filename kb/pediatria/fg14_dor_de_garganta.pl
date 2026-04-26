% =========================
% DOR DE GARGANTA
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(dor_de_garganta, vermelho,
    [pcr_bradicardia_importante_ou_pcr_iminente]).

regra(dor_de_garganta, vermelho,
    [falencia_respiratoria]).

regra(dor_de_garganta, vermelho,
    [obstrucao_vias_aereas]).

regra(dor_de_garganta, vermelho,
    [cianose_central]).

regra(dor_de_garganta, vermelho,
    [sinais_de_choque]).

regra(dor_de_garganta, vermelho,
    [paciente_nao_responsivo]).


% LARANJA
regra(dor_de_garganta, laranja,
    [sinais_de_meningismo]).

regra(dor_de_garganta, laranja,
    [deficit_neurologico_agudo]).

regra(dor_de_garganta, laranja,
    [erupcao_cutanea_fixa]).

regra(dor_de_garganta, laranja,
    [lactente_dispneico_recusa_alimentar]).

regra(dor_de_garganta, laranja,
    [spo2_muito_baixa]).

regra(dor_de_garganta, laranja,
    [disfagia_importante]).

regra(dor_de_garganta, laranja,
    [dor_intensa]).


% AMARELO
regra(dor_de_garganta, amarelo,
    [trauma_direto_pescoco]).

regra(dor_de_garganta, amarelo,
    [deficit_neurologico_novo]).

regra(dor_de_garganta, amarelo,
    [dor_moderada]).


% VERDE
regra(dor_de_garganta, verde,
    [dor_leve_recente]).

regra(dor_de_garganta, verde,
    [evento_recente]).


% AZUL
regra(dor_de_garganta, azul,
    [dor_leve]).
