% =========================
% FALTA DE AR / DIFICULDADE DE RESPIRAR
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(falta_de_ar, vermelho,
    [pcr_bradicardia_importante_ou_pcr_iminente]).

regra(falta_de_ar, vermelho,
    [apneia_bradipneia_movimentos_paradoxais]).

regra(falta_de_ar, vermelho,
    [obstrucao_vias_aereas]).

regra(falta_de_ar, vermelho,
    [cianose_central]).

regra(falta_de_ar, vermelho,
    [paciente_nao_responsivo]).

regra(falta_de_ar, vermelho,
    [falencia_respiratoria]).


% LARANJA
regra(falta_de_ar, laranja,
    [estridor_laringeo_dificuldade_falar_mamar]).

regra(falta_de_ar, laranja,
    [edema_labial_lingua_garganta_fechando]).

regra(falta_de_ar, laranja,
    [dispneia_moderada_intensa]).

regra(falta_de_ar, laranja,
    [lactente_dispneico_recusa_alimentar]).

regra(falta_de_ar, laranja,
    [spo2_muito_baixa]).

regra(falta_de_ar, laranja,
    [salivacao_excessiva]).


% AMARELO
regra(falta_de_ar, amarelo,
    [dispneia_leve]).

regra(falta_de_ar, amarelo,
    [spo2_baixa]).

regra(falta_de_ar, amarelo,
    [tosse_frequente_emetizante]).

regra(falta_de_ar, amarelo,
    [taquipneia]).


% VERDE
regra(falta_de_ar, verde,
    [dor_muscular]).
