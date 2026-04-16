% =========================
% DOR CERVICAL
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(dor_cervical, vermelho,
    [pcr_bradicardia_importante_ou_pcr_iminente]).

regra(dor_cervical, vermelho,
    [falencia_respiratoria]).

regra(dor_cervical, vermelho,
    [obstrucao_vias_aereas]).

regra(dor_cervical, vermelho,
    [cianose_central]).

regra(dor_cervical, vermelho,
    [sinais_de_choque]).

regra(dor_cervical, vermelho,
    [paciente_nao_responsivo]).


% LARANJA
regra(dor_cervical, laranja,
    [sinais_de_meningismo]).

regra(dor_cervical, laranja,
    [deficit_neurologico_agudo]).

regra(dor_cervical, laranja,
    [erupcao_cutanea_fixa]).

regra(dor_cervical, laranja,
    [lactente_dispneico_recusa_alimentar]).

regra(dor_cervical, laranja,
    [spo2_muito_baixa]).

regra(dor_cervical, laranja,
    [dor_intensa]).


% AMARELO
regra(dor_cervical, amarelo,
    [trauma_direto_pescoco]).

regra(dor_cervical, amarelo,
    [deficit_neurologico_novo]).

regra(dor_cervical, amarelo,
    [dor_moderada]).


% VERDE
regra(dor_cervical, verde,
    [dor_leve_recente]).

regra(dor_cervical, verde,
    [evento_recente]).


% AZUL
regra(dor_cervical, azul,
    [dor_leve]).
